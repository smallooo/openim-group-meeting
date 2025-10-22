#!/bin/bash

# iOS 证书和配置文件安装脚本
# 此脚本会自动配置开发环境的签名证书

set -e

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
CERT_DIR="$PROJECT_DIR/ios/certificates"

echo "📦 开始配置 iOS 签名证书..."

# 检查证书文件是否存在
if [ ! -f "$CERT_DIR/development.p12" ]; then
    echo "❌ 错误: 找不到证书文件 $CERT_DIR/development.p12"
    echo "请先从钥匙串导出证书到 ios/certificates/development.p12"
    exit 1
fi

if [ ! -f "$CERT_DIR/development.mobileprovision" ]; then
    echo "❌ 错误: 找不到配置文件 $CERT_DIR/development.mobileprovision"
    echo "请先从 Apple Developer 下载配置文件到 ios/certificates/development.mobileprovision"
    exit 1
fi

# 证书密码（可以从环境变量读取）
CERT_PASSWORD="${IOS_CERT_PASSWORD:-toklink2025}"

# 创建临时钥匙串
KEYCHAIN_NAME="ios-build.keychain"
KEYCHAIN_PASSWORD="temporary_password"

# 删除旧的临时钥匙串（如果存在）
security delete-keychain "$KEYCHAIN_NAME" 2>/dev/null || true

# 创建新的临时钥匙串
security create-keychain -p "$KEYCHAIN_PASSWORD" "$KEYCHAIN_NAME"
security set-keychain-settings -lut 21600 "$KEYCHAIN_NAME"
security unlock-keychain -p "$KEYCHAIN_PASSWORD" "$KEYCHAIN_NAME"

# 导入证书到钥匙串
echo "🔐 导入证书到钥匙串..."
security import "$CERT_DIR/development.p12" \
    -k "$KEYCHAIN_NAME" \
    -P "$CERT_PASSWORD" \
    -T /usr/bin/codesign \
    -T /usr/bin/security

# 设置钥匙串搜索列表
security list-keychains -d user -s "$KEYCHAIN_NAME" $(security list-keychains -d user | sed s/\"//g)

# 设置证书信任
security set-key-partition-list -S apple-tool:,apple: -s -k "$KEYCHAIN_PASSWORD" "$KEYCHAIN_NAME"

# 安装 Provisioning Profiles
echo "📱 安装 Provisioning Profiles..."

# 主应用 Profile
MAIN_PROFILE_UUID=$(security cms -D -i "$CERT_DIR/development.mobileprovision" 2>/dev/null | grep -A1 '<key>UUID</key>' | tail -1 | sed 's/<[^>]*>//g' | xargs)

if [ -z "$MAIN_PROFILE_UUID" ]; then
    echo "❌ 错误: 无法提取主应用 Provisioning Profile UUID"
    exit 1
fi

mkdir -p ~/Library/MobileDevice/Provisioning\ Profiles
cp "$CERT_DIR/development.mobileprovision" ~/Library/MobileDevice/Provisioning\ Profiles/"$MAIN_PROFILE_UUID.mobileprovision"
echo "   ✓ 主应用 Profile UUID: $MAIN_PROFILE_UUID"

# NotificationService Extension Profile
if [ -f "$CERT_DIR/notificationservice.mobileprovision" ]; then
    EXTENSION_PROFILE_UUID=$(security cms -D -i "$CERT_DIR/notificationservice.mobileprovision" 2>/dev/null | grep -A1 '<key>UUID</key>' | tail -1 | sed 's/<[^>]*>//g' | xargs)

    if [ -z "$EXTENSION_PROFILE_UUID" ]; then
        echo "❌ 错误: 无法提取 Extension Provisioning Profile UUID"
        exit 1
    fi

    cp "$CERT_DIR/notificationservice.mobileprovision" ~/Library/MobileDevice/Provisioning\ Profiles/"$EXTENSION_PROFILE_UUID.mobileprovision"
    echo "   ✓ Extension Profile UUID: $EXTENSION_PROFILE_UUID"
else
    echo "⚠️  警告: 未找到 notificationservice.mobileprovision，Extension 可能无法签名"
fi

echo "✅ 证书配置完成！"
echo ""
echo "📋 配置信息："
echo "   钥匙串: $KEYCHAIN_NAME"
echo ""
echo "现在你可以运行："
echo "   flutter build ios --release"
echo ""
