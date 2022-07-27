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

brew cleanup

ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig