.PHONY: help build-apk build-ios clean setup-jars check-jars copy-jars clean-gradle

# 默认目标
help:
	@echo "可用命令:"
	@echo "  make setup-jars    - 下载并设置 media_kit jar 包到本地"
	@echo "  make check-jars    - 检查本地 jar 包是否存在"
	@echo "  make copy-jars     - 复制本地 jar 包到构建目标目录"
	@echo "  make build-apk     - 构建 Android APK (使用本地 jar)"
	@echo "  make build-ios     - 构建 iOS IPA"
	@echo "  make clean         - 清理构建文件"
	@echo "  make clean-gradle  - 清理 Gradle 缓存（解决 Kotlin 版本问题）"
	@echo "  make flutter-clean - Flutter clean + 清理 jar 缓存"

# 检查本地 jar 包是否存在
check-jars:
	@echo "检查本地 jar 包..."
	@if [ -d "android/libs/media_kit" ] && [ -n "$$(ls -A android/libs/media_kit/*.jar 2>/dev/null)" ]; then \
		echo "✅ 找到 $$(ls android/libs/media_kit/*.jar | wc -l | xargs) 个 jar 文件:"; \
		ls -lh android/libs/media_kit/*.jar; \
	else \
		echo "❌ 未找到本地 jar 包"; \
		echo "请运行: make setup-jars"; \
		exit 1; \
	fi

# 下载并设置 jar 包到本地（避免重复下载）
setup-jars:
	@echo "设置 media_kit jar 包到本地..."
	@mkdir -p android/libs/media_kit
	@cd android/libs/media_kit && \
	if [ ! -f default-arm64-v8a.jar ]; then \
		echo "下载 arm64-v8a..."; \
		curl -L -o default-arm64-v8a.jar https://github.com/media-kit/libmpv-android-video-build/releases/download/v1.1.5/default-arm64-v8a.jar; \
	fi && \
	if [ ! -f default-armeabi-v7a.jar ]; then \
		echo "下载 armeabi-v7a..."; \
		curl -L -o default-armeabi-v7a.jar https://github.com/media-kit/libmpv-android-video-build/releases/download/v1.1.5/default-armeabi-v7a.jar; \
	fi && \
	if [ ! -f default-x86_64.jar ]; then \
		echo "下载 x86_64..."; \
		curl -L -o default-x86_64.jar https://github.com/media-kit/libmpv-android-video-build/releases/download/v1.1.5/default-x86_64.jar; \
	fi && \
	if [ ! -f default-x86.jar ]; then \
		echo "下载 x86..."; \
		curl -L -o default-x86.jar https://github.com/media-kit/libmpv-android-video-build/releases/download/v1.1.5/default-x86.jar; \
	fi
	@echo "✅ jar 包设置完成"
	@make check-jars

# 复制本地 jar 包到构建目标目录
copy-jars: check-jars
	@echo "复制本地 jar 包到构建目标目录..."
	@mkdir -p build/media_kit_libs_android_video/v1.1.5
	@cp android/libs/media_kit/*.jar build/media_kit_libs_android_video/v1.1.5/
	@echo "✅ 已复制 $$(ls build/media_kit_libs_android_video/v1.1.5/*.jar | wc -l | xargs) 个文件到 build/media_kit_libs_android_video/v1.1.5/"
	@ls -lh build/media_kit_libs_android_video/v1.1.5/

# 构建 Android APK（先清理、复制 jar，再构建）
build-apk: clean copy-jars
	@echo "构建 Android APK (使用本地 jar 包)..."
	@flutter build apk --release

# 构建 iOS IPA
build-ios:
	@echo "构建 iOS IPA..."
	@flutter build ipa --release

# 清理构建文件（保留本地 jar 包）
clean:
	@echo "清理构建文件..."
	@flutter clean
	@echo "✅ 清理完成（本地 jar 包已保留）"

# 清理 Gradle 缓存（解决 Kotlin 版本冲突）
clean-gradle:
	@echo "清理 Gradle 缓存..."
	@cd android && ./gradlew clean
	@cd android && ./gradlew --stop
	@rm -rf ~/.gradle/caches/
	@echo "✅ Gradle 缓存已清理"

# Flutter clean + 清理 jar 缓存
flutter-clean:
	@echo "完全清理（包括 jar 包）..."
	@flutter clean
	@rm -rf build/media_kit_libs_android_video/
	@echo "✅ 完全清理完成"

# 验证 MD5（可选）
verify-jars: check-jars
	@echo "验证 jar 包 MD5..."
	@cd android/libs/media_kit && \
	echo "arm64-v8a: $$(md5 -q default-arm64-v8a.jar) (期望: 5f521b08692d7fef73c5df9bcc00ca4d)" && \
	echo "armeabi-v7a: $$(md5 -q default-armeabi-v7a.jar) (期望: 08d500ca1116c13e9c1296cc6f2207b0)" && \
	echo "x86_64: $$(md5 -q default-x86_64.jar) (期望: 0880d5fbc3ff0053409704617f54cb55)" && \
	echo "x86: $$(md5 -q default-x86.jar) (期望: f6f51aa42b30d747099506cdc3277352)"
