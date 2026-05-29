#!/bin/bash
# install homebrew buat mac, perlu password

set -e

echo "=== install homebrew ==="
if command -v brew &>/dev/null; then
  echo "brew udah ada: $(brew --version | head -1)"
else
  NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zshrc
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

echo ""
echo "=== install java (opsional) ==="
brew install openjdk@17

echo ""
echo "selesai, ketik: source ~/.zshrc"
