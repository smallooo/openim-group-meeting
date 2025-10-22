# iOS 证书和 Provisioning Profile 配置指南

本目录包含 iOS 应用签名所需的证书和配置文件，用于团队开发环境。

## 📁 文件说明

```
ios/certificates/
├── development.p12                      # 开发证书（包含私钥）
├── development.mobileprovision          # 主应用 Provisioning Profile
├── notificationservice.mobileprovision  # Extension Provisioning Profile
└── README.md                            # 本文档
```

## 🔐 证书信息

- **证书类型**: Apple Development
- **开发者**: Christian Morganti (HMCV3NMG73)
- **Team ID**: 3CUCH9D3BV
- **密码**: `toklink2025`

## 📱 Provisioning Profile 配置

### 主应用 (development.mobileprovision)
- **Bundle ID**: `io.toklink.trunk`
- **当前 UUID**: `3311108f-0490-452c-acf0-233913bdecde`
- **功能**:
  - App Groups (`group.io.toklink.trunk`)
  - Push Notifications

### Extension (notificationservice.mobileprovision)
- **Bundle ID**: `io.toklink.trunk.NotificationService`
- **当前 UUID**: `6e485537-fb72-4f25-9a58-958c725d8457`
- **功能**:
  - App Groups (`group.io.toklink.trunk`)

## 🚀 快速开始

### 首次使用

```bash
# 1. 克隆项目
git clone <repository-url>
cd mobile

# 2. 直接构建（会自动配置证书）
make build-ipa
```

### 日常构建

```bash
make build-ipa
```

生成的 IPA 文件位于: `build/ios/ipa/Toklink.ipa`

## 🔄 更新 Provisioning Profile

当你需要添加新设备或修改 App 功能时，需要重新生成 Profile。

### 步骤 1: 在 Apple Developer 更新配置

**添加新设备:**
1. 进入 [Apple Developer](https://developer.apple.com/account/) → Certificates, Identifiers & Profiles
2. Devices → 点击 `+` 添加设备 UDID
3. 记录设备名称和 UDID

**更新 App Groups 或其他功能:**
1. Identifiers → 选择对应的 App ID
2. 编辑 Capabilities
3. 保存更改

### 步骤 2: 重新生成 Provisioning Profile

**主应用 Profile:**
1. Profiles → 选择 "Toklink Labs" (或主应用 Profile)
2. Edit → 选择新添加的设备（或验证 Capabilities）
3. Generate → Download
4. 保存为 `development.mobileprovision`
5. 覆盖到 `ios/certificates/development.mobileprovision`

**Extension Profile:**
1. Profiles → 选择 "Toklink NotificationService" (或 Extension Profile)
2. Edit → 选择新添加的设备（或验证 Capabilities）
3. Generate → Download
4. 保存为 `notificationservice.mobileprovision`
5. 覆盖到 `ios/certificates/notificationservice.mobileprovision`

### 步骤 3: 更新项目配置

**自动更新（推荐）:**
```bash
make update-profiles
```

这会自动：
- 提取新的 Profile UUID
- 更新 `project.pbxproj` 配置
- 更新 `makefile` 配置
- 创建配置文件备份

**手动更新:**
```bash
# 1. 提取 UUID
security cms -D -i ios/certificates/development.mobileprovision | grep -A1 UUID

# 2. 手动编辑 ios/Runner.xcodeproj/project.pbxproj
# 搜索并替换 PROVISIONING_PROFILE_SPECIFIER

# 3. 更新 makefile 中的 UUID
```

### 步骤 4: 验证并重新构建

```bash
# 验证更改
git diff ios/Runner.xcodeproj/project.pbxproj makefile

# 重新构建
make build-ipa
```

### 步骤 5: 提交更改

```bash
git add ios/certificates/*.mobileprovision
git add ios/Runner.xcodeproj/project.pbxproj
git add makefile
git commit -m "chore(ios): update provisioning profiles for new devices"
git push
```

## 📊 常见场景

### 场景 1: 添加新的测试设备

1. 获取设备 UDID (连接设备到 Mac，打开 Finder → 设备)
2. 在 Apple Developer 添加设备
3. 重新生成**两个** Profile（主应用 + Extension）
4. 下载并覆盖到 `ios/certificates/`
5. 运行 `make update-profiles`
6. 运行 `make build-ipa`
7. 将新的 IPA 分发给测试人员

### 场景 2: 修改 App Groups

1. 在 Apple Developer 修改 App ID 的 App Groups
2. 重新生成**两个** Profile
3. 下载并覆盖
4. 运行 `make update-profiles`
5. 同时需要更新 entitlements 文件：
   - `ios/Runner/Runner.entitlements`
   - `ios/NotificationService/NotificationService.entitlements`
6. 运行 `make build-ipa`

### 场景 3: 更换开发者账号

1. 生成新的开发证书（.p12 文件）
2. 生成新的 Provisioning Profiles
3. 替换 `ios/certificates/` 中的所有文件
4. 更新 `scripts/setup_ios_certificates.sh` 中的密码（如果改变）
5. 运行 `make update-profiles`
6. 运行 `make build-ipa`

## 🔧 故障排查

### 问题 1: 构建失败 - "No valid code signing certificates"

**原因**: 证书未正确导入到钥匙串

**解决**:
```bash
# 手动运行证书配置
make setup-ios-certs

# 检查钥匙串
security find-identity -v -p codesigning
```

### 问题 2: 构建失败 - "requires a provisioning profile with the App Groups"

**原因**: Provisioning Profile 缺少必需的 Capabilities

**解决**:
1. 检查 Profile 是否包含 App Groups
```bash
security cms -D -i ios/certificates/development.mobileprovision | grep -A5 Entitlements
```

2. 重新生成包含正确 Capabilities 的 Profile

### 问题 3: UUID 未正确更新

**原因**: 自动脚本可能失败

**解决**:
```bash
# 恢复备份
mv ios/Runner.xcodeproj/project.pbxproj.backup ios/Runner.xcodeproj/project.pbxproj

# 手动提取 UUID
security cms -D -i ios/certificates/development.mobileprovision | grep -A1 UUID

# 手动编辑文件
```

### 问题 4: Profile 过期

**原因**: Provisioning Profile 有效期为 1 年

**解决**:
1. 在 Apple Developer 重新生成 Profile（无需修改配置）
2. 下载新的 Profile 文件
3. 运行 `make update-profiles`
4. 重新构建

## 📝 技术细节

### Profile UUID 在哪里使用？

Profile UUID 需要配置在以下位置：

1. **project.pbxproj** (6 处)
   - Runner target - Debug 配置
   - Runner target - Release 配置
   - Runner target - Profile 配置
   - NotificationService target - Debug 配置
   - NotificationService target - Release 配置
   - NotificationService target - Profile 配置

2. **makefile** (xcodebuild export 命令中)
   - 主应用 UUID
   - Extension UUID

### 为什么需要两个 Profile？

iOS App Extensions（如 NotificationService）需要：
- 独立的 Bundle ID (`io.toklink.trunk.NotificationService`)
- 独立的 Provisioning Profile
- 相同的 Team ID 和 App Groups 以共享数据

### 自动化脚本做了什么？

`scripts/update_profiles.sh` 脚本会：
1. 从 .mobileprovision 文件提取 UUID
2. 备份 project.pbxproj 和 makefile
3. 使用 sed 命令替换所有旧的 UUID
4. 验证更改并显示差异

## 🔗 相关链接

- [Apple Developer 账号](https://developer.apple.com/account/)
- [证书和 Profile 管理](https://developer.apple.com/account/resources/certificates/list)
- [获取设备 UDID](https://developer.apple.com/documentation/xcode/distributing-your-app-to-registered-devices)
- [App Groups 配置](https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_application-groups)

## 📞 支持

如有问题，请联系项目维护者或查看项目文档。

---

**最后更新**: 2025-10-22
**维护者**: TokLink Labs
