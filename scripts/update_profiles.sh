#!/bin/bash

# 更新 Provisioning Profile UUID 的脚本
# 用于在 Profile 更新后自动更新项目配置

set -e

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
CERT_DIR="$PROJECT_DIR/ios/certificates"
PBXPROJ="$PROJECT_DIR/ios/Runner.xcodeproj/project.pbxproj"
MAKEFILE="$PROJECT_DIR/makefile"

echo "🔄 更新 Provisioning Profile UUID..."
echo ""

# 提取主应用 Profile UUID
if [ ! -f "$CERT_DIR/development.mobileprovision" ]; then
    echo "❌ 错误: 未找到 development.mobileprovision"
    echo "请先下载新的 Profile 到 ios/certificates/development.mobileprovision"
    exit 1
fi

MAIN_UUID=$(security cms -D -i "$CERT_DIR/development.mobileprovision" 2>/dev/null | grep -A1 '<key>UUID</key>' | tail -1 | sed 's/<[^>]*>//g' | xargs)

if [ -z "$MAIN_UUID" ]; then
    echo "❌ 错误: 无法提取主应用 Profile UUID"
    exit 1
fi

echo "📱 主应用 Profile UUID: $MAIN_UUID"

# 提取 Extension Profile UUID
if [ -f "$CERT_DIR/notificationservice.mobileprovision" ]; then
    EXTENSION_UUID=$(security cms -D -i "$CERT_DIR/notificationservice.mobileprovision" 2>/dev/null | grep -A1 '<key>UUID</key>' | tail -1 | sed 's/<[^>]*>//g' | xargs)

    if [ -z "$EXTENSION_UUID" ]; then
        echo "❌ 错误: 无法提取 Extension Profile UUID"
        exit 1
    fi

    echo "📱 Extension Profile UUID: $EXTENSION_UUID"
else
    echo "⚠️  警告: 未找到 notificationservice.mobileprovision"
    EXTENSION_UUID=""
fi

echo ""
echo "📝 更新项目配置文件..."

# 备份 project.pbxproj
cp "$PBXPROJ" "$PBXPROJ.backup"
echo "   ✓ 已备份 project.pbxproj"

# 查找并显示当前的 UUID
CURRENT_MAIN_UUID=$(grep -m1 'PROVISIONING_PROFILE_SPECIFIER.*97C147' "$PBXPROJ" | sed 's/.*"\(.*\)".*/\1/')
echo "   当前主应用 UUID: $CURRENT_MAIN_UUID"

if [ -n "$EXTENSION_UUID" ]; then
    CURRENT_EXT_UUID=$(grep -m1 'PROVISIONING_PROFILE_SPECIFIER.*173BE199' "$PBXPROJ" | sed 's/.*"\(.*\)".*/\1/')
    echo "   当前 Extension UUID: $CURRENT_EXT_UUID"
fi

# 更新 project.pbxproj 中的主应用 UUID (Runner target 的所有配置)
if [ "$CURRENT_MAIN_UUID" != "$MAIN_UUID" ]; then
    # 只替换 Runner target 的 UUID (97C147 配置段)
    sed -i '' "/97C147.*\/\* Debug \*\//,/name = Debug;/s/PROVISIONING_PROFILE_SPECIFIER = \".*\"/PROVISIONING_PROFILE_SPECIFIER = \"$MAIN_UUID\"/" "$PBXPROJ"
    sed -i '' "/97C147.*\/\* Release \*\//,/name = Release;/s/PROVISIONING_PROFILE_SPECIFIER = \".*\"/PROVISIONING_PROFILE_SPECIFIER = \"$MAIN_UUID\"/" "$PBXPROJ"
    sed -i '' "/249021D4.*\/\* Profile \*\//,/name = Profile;/s/PROVISIONING_PROFILE_SPECIFIER = \".*\"/PROVISIONING_PROFILE_SPECIFIER = \"$MAIN_UUID\"/" "$PBXPROJ"
    echo "   ✓ 已更新主应用 UUID: $CURRENT_MAIN_UUID -> $MAIN_UUID"
else
    echo "   ℹ️  主应用 UUID 未变化"
fi

# 更新 Extension UUID (如果存在)
if [ -n "$EXTENSION_UUID" ] && [ "$CURRENT_EXT_UUID" != "$EXTENSION_UUID" ]; then
    sed -i '' "/173BE199.*\/\* Debug \*\//,/name = Debug;/s/PROVISIONING_PROFILE_SPECIFIER = \".*\"/PROVISIONING_PROFILE_SPECIFIER = \"$EXTENSION_UUID\"/" "$PBXPROJ"
    sed -i '' "/173BE19A.*\/\* Release \*\//,/name = Release;/s/PROVISIONING_PROFILE_SPECIFIER = \".*\"/PROVISIONING_PROFILE_SPECIFIER = \"$EXTENSION_UUID\"/" "$PBXPROJ"
    sed -i '' "/173BE19B.*\/\* Profile \*\//,/name = Profile;/s/PROVISIONING_PROFILE_SPECIFIER = \".*\"/PROVISIONING_PROFILE_SPECIFIER = \"$EXTENSION_UUID\"/" "$PBXPROJ"
    echo "   ✓ 已更新 Extension UUID: $CURRENT_EXT_UUID -> $EXTENSION_UUID"
elif [ -n "$EXTENSION_UUID" ]; then
    echo "   ℹ️  Extension UUID 未变化"
fi

# 更新 makefile
if [ -f "$MAKEFILE" ]; then
    cp "$MAKEFILE" "$MAKEFILE.backup"

    # 更新 makefile 中的 UUID
    sed -i '' "s/<key>io.toklink.trunk<\/key><string>.*<\/string>/<key>io.toklink.trunk<\/key><string>$MAIN_UUID<\/string>/" "$MAKEFILE"

    if [ -n "$EXTENSION_UUID" ]; then
        sed -i '' "s/<key>io.toklink.trunk.NotificationService<\/key><string>.*<\/string>/<key>io.toklink.trunk.NotificationService<\/key><string>$EXTENSION_UUID<\/string>/" "$MAKEFILE"
    fi

    echo "   ✓ 已更新 makefile"
fi

echo ""
echo "✅ 更新完成！"
echo ""
echo "📋 新的配置："
echo "   主应用 UUID: $MAIN_UUID"
if [ -n "$EXTENSION_UUID" ]; then
    echo "   Extension UUID: $EXTENSION_UUID"
fi
echo ""
echo "💡 下一步："
echo "   1. 验证更改: git diff ios/Runner.xcodeproj/project.pbxproj"
echo "   2. 重新构建: make build-ipa"
echo ""
echo "📦 如果有问题，可以恢复备份："
echo "   mv $PBXPROJ.backup $PBXPROJ"
echo "   mv $MAKEFILE.backup $MAKEFILE"
echo ""
