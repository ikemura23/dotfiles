#!/bin/sh

# HomeBrewのインストール
if [ ! -x "`which brew`" ]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew update
fi

# mas-cliのインストール
if [ ! -x "`which mas`" ]; then
  brew install mas
fi

mas install 411213048  # LadioCast
mas install 405399194  # Kindle
mas install 1491071483 # Tot
mas install 497799835  # Xcode
mas install 425424353  # The Unarchiver
mas install 980577198  # Tunacan

brew install imagemagick
brew install ffmpeg
brew install vim
brew install tig
brew install scrcpy
brew install nodenv
brew install jq
brew install curl
#brew install openjdk
brew install openjdk@11

# cask
brew install google-japanese-ime
brew install google-chrome
brew install choosy
brew install fork
brew install obs
brew install rectangle
brew install sonic-pi
brew install sublime-text
brew install vlc
brew install arduino
brew install iterm2
brew install notion
brew install jetbrains-toolbox
brew install figma
brew install zoom
brew install brave-browser
brew install alfred
brew install visual-studio-code
brew install adobe-creative-cloud
brew install appcleaner
brew install openineditor-lite
brew install openinterminal-lite

brew cleanup

ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig

# --- Finder ---
# 隠しファイルを表示
defaults write com.apple.finder AppleShowAllFiles -bool true
# すべての拡張子のファイルを表示
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# ステータスバーを表示
defaults write com.apple.finder ShowStatusBar -bool true
# パスバーを表示
defaults write com.apple.finder ShowPathbar -bool true

killall Finder

# ネットワークストレージに .DS_Store ファイルを作成しない
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
# USBメモリに .DS_Store ファイルを作成しない
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# --- Dock ---
# “自動的に非表示”をオン
defaults write com.apple.dock autohide -bool true
# 最近使ったアプリケーションを非表示
defaults write com.apple.dock show-recents -bool false
killall Dock

# --- SystemUIServer関係 ---
# 時計で日付を表示（例：9月20日(木) 23:00）
defaults write com.apple.menuextra.clock DateFormat -string 'EEE MMM d HH:mm'
# バッテリーの割合（%）を表示
defaults write com.apple.menuextra.battery ShowPercent -string "YES"
# スクリーンショットのドロップシャドウを付けない
defaults write com.apple.screencapture disable-shadow -bool true
killall SystemUIServer

echo "install done"