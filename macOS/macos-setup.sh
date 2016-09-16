# Write this into ~/.bash_profile

#########################################
#actual file

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


# Installs git, golang and other stuff
brew bundle

mkdir $HOME/Developer
mkdir $HOME/Developer/golang

echo "if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi" >> ~/.bash_profile

# add golang paths
echo "export GOPATH=$HOME/Developer/golang
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin"

echo "parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}"

echo "export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
export HISTCONTROL=ignoreboth:erasedups"

git config --global core.excludesfile ~/.gitignore_global
curl "https://raw.githubusercontent.com/github/gitignore/master/Global/macOS.gitignore" >> ~/.gitignore_global
curl "https://raw.githubusercontent.com/github/gitignore/master/Global/Xcode.gitignore" >> ~/.gitignore_global


echo "Now, please set xcode editor black and add two space indentation!!"
echo "Also, install the terminal theme"
