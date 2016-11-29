# Write this into ~/.bash_profile
cp ./bash_profile.txt $HOME/.bash_profile

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


# Homebrew Installs
brew tap Homebrew/bundle
brew bundle
apm install sync-settings


mkdir $HOME/Developer
mkdir $HOME/Developer/golang

git config --global core.excludesfile ~/.gitignore_global
curl "https://raw.githubusercontent.com/github/gitignore/master/Global/macOS.gitignore" >> ~/.gitignore_global
curl "https://raw.githubusercontent.com/github/gitignore/master/Global/Xcode.gitignore" >> ~/.gitignore_global


echo "Now, please set xcode editor black and add two space indentation!!"
echo "Also, install the terminal theme"
echo "change trackpad settings for triple tap lookup"
echo "change keyboard settings for fast scroll"
