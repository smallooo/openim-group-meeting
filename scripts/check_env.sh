#!/usr/bin/env bash

set -euo pipefail

print_section() {
  echo
  echo "==================== $1 ===================="
}

cmd_or_placeholder() {
  local desc="$1"; shift || true
  if command -v "$1" >/dev/null 2>&1; then
    "$@"
  else
    echo "$desc: not installed"
  fi
}

# project directory (optional arg). Defaults to current directory
PROJECT_DIR="${1:-$(pwd)}"

print_section "System"
sw_vers || true
uname -mr || true

print_section "Xcode / CLT"
cmd_or_placeholder "xcodebuild" xcodebuild -version || true
cmd_or_placeholder "xcode-select" xcode-select -p || true

print_section "CocoaPods / Ruby"
cmd_or_placeholder "pod" pod --version || true
cmd_or_placeholder "ruby" ruby -v || true

print_section "Flutter / Dart"
which flutter || true
cmd_or_placeholder "flutter" flutter --version || true
cmd_or_placeholder "flutter channel" flutter channel || true
cmd_or_placeholder "dart" dart --version || true
cmd_or_placeholder "flutter doctor" flutter doctor -v || true

print_section "Android / Java (optional)"
cmd_or_placeholder "java" java -version || true
echo "JAVA_HOME=${JAVA_HOME:-}"
echo "ANDROID_HOME=${ANDROID_HOME:-}"
echo "ANDROID_SDK_ROOT=${ANDROID_SDK_ROOT:-}"
cmd_or_placeholder "sdkmanager" sdkmanager --version || true

print_section "Package mirrors"
echo "PUB_HOSTED_URL=${PUB_HOSTED_URL:-}"
echo "FLUTTER_STORAGE_BASE_URL=${FLUTTER_STORAGE_BASE_URL:-}"

print_section "Project directory"
echo "PROJECT_DIR=${PROJECT_DIR}"

if [ -d "${PROJECT_DIR}" ]; then
  cd "${PROJECT_DIR}"
else
  echo "Project directory does not exist: ${PROJECT_DIR}" >&2
  exit 1
fi

if [ -f pubspec.yaml ]; then
  print_section "pubspec.yaml presence"
  echo "Found pubspec.yaml"
else
  echo "pubspec.yaml not found in ${PROJECT_DIR}" >&2
fi

print_section "Flutter dependencies (tree)"
cmd_or_placeholder "flutter pub deps" flutter pub deps || true

print_section "Record family (from flutter pub deps)"
if command -v flutter >/dev/null 2>&1; then
  flutter pub deps | grep -i "record" || true
fi

if [ -f pubspec.lock ]; then
  print_section "Record family (from pubspec.lock)"
  # Print blocks for record related packages with their versions
  awk '
    BEGIN {show=0}
    /^  record([_: ]|$)/ {show=6; print; next}
    show>0 {print; show--}
  ' pubspec.lock || true

  print_section "SDK constraints (from pubspec.lock)"
  awk '/^sdks:/,0 {print}' pubspec.lock || true
else
  echo "pubspec.lock not found (run: flutter pub get)"
fi

print_section "PATH (head)"
echo "$PATH" | tr ':' '\n' | head -n 20

echo
echo "Done."


