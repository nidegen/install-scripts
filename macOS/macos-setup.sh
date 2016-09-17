# Write this into ~/.bash_profile
cp ./bash_profile.txt $HOME/.bash_profile

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


# Homebrew Installs
brew install imagemagick
brew install git
brew install bash-completion
brew install cmake
brew install clang-format
brew install go

brew cask install google-chrome
brew cask install spotify
brew cask install github
brew cask install google-drive
brew cask install meshlab
brew cask install inkscape
brew cask install paintbrush
brew cask install dropbox
brew cask install vlc
brew cask install xquartz
brew cask install flux
brew cask install filezilla
brew cask install blender
brew cask install java
brew cask install mactex
brew cask install atom
apm install atom-sync


## Install in App store
echo "Install in App Store: Twitter"
echo "Install in App Store: Telegram"
echo "Install in App Store: OneDrive"
echo "Install in App Store: Evernote"
echo "Install in App Store: WOT"

mkdir $HOME/Developer
mkdir $HOME/Developer/golang

git config --global core.excludesfile ~/.gitignore_global
curl "https://raw.githubusercontent.com/github/gitignore/master/Global/macOS.gitignore" >> ~/.gitignore_global
curl "https://raw.githubusercontent.com/github/gitignore/master/Global/Xcode.gitignore" >> ~/.gitignore_global


echo "Now, please set xcode editor black and add two space indentation!!"
echo "Also, install the terminal theme"
echo "change trackpad settings for triple tap lookup"
echo "change keyboard settings for fast scroll"
