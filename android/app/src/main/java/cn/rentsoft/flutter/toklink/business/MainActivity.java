package cn.rentsoft.flutter.toklink.business;

import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import androidx.core.content.FileProvider;
import io.flutter.embedding.android.FlutterFragmentActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.MethodChannel;
import java.io.File;

public class MainActivity extends FlutterFragmentActivity {
    private static final String CHANNEL = "toklink.app/install_apk";

    @Override
    public void configureFlutterEngine(FlutterEngine flutterEngine) {
        super.configureFlutterEngine(flutterEngine);
        new MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger(), CHANNEL)
                .setMethodCallHandler((call, result) -> {
                    if (call.method.equals("installApk")) {
                        String apkPath = call.argument("apkPath");
                        if (apkPath != null) {
                            installApk(apkPath);
                            result.success(true);
                        } else {
                            result.error("INVALID_ARGUMENT", "APK path is null", null);
                        }
                    } else if (call.method.equals("checkInstallPermission")) {
                        // 检查是否有安装权限（Android 8.0+）
                        boolean hasPermission = checkInstallPermission();
                        result.success(hasPermission);
                    } else if (call.method.equals("openInstallPermissionSettings")) {
                        // 打开安装权限设置页面
                        openInstallPermissionSettings();
                        result.success(true);
                    } else {
                        result.notImplemented();
                    }
                });
    }

    private boolean checkInstallPermission() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            return getPackageManager().canRequestPackageInstalls();
        }
        // Android 8.0 以下不需要此权限
        return true;
    }

    private void openInstallPermissionSettings() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            Intent intent = new Intent(android.provider.Settings.ACTION_MANAGE_UNKNOWN_APP_SOURCES);
            intent.setData(android.net.Uri.parse("package:" + getPackageName()));
            try {
                startActivity(intent);
            } catch (Exception e) {
                android.util.Log.e("MainActivity", "Failed to open install permission settings: " + e.getMessage());
                // 如果无法打开特定应用的设置，尝试打开通用设置
                Intent fallbackIntent = new Intent(android.provider.Settings.ACTION_MANAGE_UNKNOWN_APP_SOURCES);
                startActivity(fallbackIntent);
            }
        }
    }

    private void installApk(String apkPath) {
        File apkFile = new File(apkPath);
        if (!apkFile.exists()) {
            android.util.Log.e("MainActivity", "APK file does not exist: " + apkPath);
            return;
        }

        // 检查文件大小
        long fileSize = apkFile.length();
        if (fileSize == 0) {
            android.util.Log.e("MainActivity", "APK file is empty: " + apkPath);
            return;
        }

        android.util.Log.d("MainActivity", "Installing APK: " + apkPath + ", size: " + fileSize);

        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);

        Uri apkUri;
        try {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
                // Android 7.0+ 使用 FileProvider
                String authority = getPackageName() + ".fileProvider";
                apkUri = FileProvider.getUriForFile(this, authority, apkFile);
                android.util.Log.d("MainActivity", "Using FileProvider, authority: " + authority);
            } else {
                // Android 7.0 以下直接使用 file://
                apkUri = Uri.fromFile(apkFile);
                android.util.Log.d("MainActivity", "Using file:// URI");
            }

            intent.setDataAndType(apkUri, "application/vnd.android.package-archive");

            // Android 8.0+ 需要额外权限
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                boolean hasInstallPermission = getPackageManager().canRequestPackageInstalls();
                if (!hasInstallPermission) {
                    android.util.Log.w("MainActivity", "INSTALL_PACKAGES permission not granted");
                    // 注意：这里只是记录，实际权限检查应该在 Flutter 层处理
                }
            }

            startActivity(intent);
            android.util.Log.d("MainActivity", "Install intent started successfully");
        } catch (Exception e) {
            android.util.Log.e("MainActivity", "Error installing APK: " + e.getMessage(), e);
            throw e;
        }
    }
}
