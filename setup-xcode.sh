#!/bin/bash
# setting xcode buat flutter ios

set -e

echo "=== sambungin xcode ==="
sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
xcode-select -p

echo ""
echo "=== setujui lisensi xcode ==="
echo "scroll pakai spasi, terus ketik agree"
sudo xcodebuild -license

echo ""
echo "=== download simulator ios ==="
xcodebuild -downloadPlatform iOS

echo ""
echo "selesai"
