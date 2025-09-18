#!/usr/bin/env zsh
# Pixel 7a incremental photo backup
# 0) brew install --cask android-platform-tools
# 1) Checks ADB / USB / authorization
# 2) Incrementally pulls albums to /Volumes/WESSD02/cameraPixel7a

set -euo pipefail

DEST_BASE="/Volumes/WESSD02/cameraPixel7a"

REMOTE_DIRS=(
  "/sdcard/Pictures/Screenshots"
  "/sdcard/Pictures/Messenger"
  "/sdcard/Download/Meta AI"
  "/sdcard/Download/Meta View"
  "/sdcard/DCIM/Camera"
)

check_env() {
  printf "🔍  Checking ADB installation…\n"
  command -v adb >/dev/null || {
    printf "❌  adb not found. Try: brew install --cask android-platform-tools\n"; return 1
  }

  printf "🔍  Checking USB connection…\n"
  system_profiler SPUSBDataType | grep -qi 'Pixel 7a' || {
    printf "❌  Pixel 7a not detected. Check cable / set File Transfer.\n"; return 1
  }

  printf "🔍  Waiting for device…\n"
  adb wait-for-device

  [[ $(adb devices | awk 'NR==2 {print $2}') == device ]] || {
    printf "❌  adb not authorized. Revoke USB debugging, delete ~/.android/adbkey*, re-plug.\n"
    return 1
  }
  printf "✅  Environment OK.\n"
}

backup_albums() {
  for REMOTE in "${REMOTE_DIRS[@]}"; do
    # Skip if remote folder does not exist
    adb shell "[ -d \"${REMOTE}\" ]" >/dev/null 2>&1 || {
      printf "⚠︎  Skip %-20s (not found)\n" "${REMOTE}"; continue
    }

    local DIRNAME=${REMOTE:t}         # Basename, keeps spaces
    local LOCAL="$DEST_BASE/$DIRNAME"
    printf "📂  Syncing %-12s -> %s\n" "$DIRNAME" "$LOCAL"

    mkdir -p "$LOCAL"
    adb pull -a "$REMOTE/." "$LOCAL"
  done
}

check_env || exit 1
backup_albums
printf "🎉  Backup complete! Files are in %s\n" "$DEST_BASE"
