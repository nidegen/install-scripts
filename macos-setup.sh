# Write this into ~/.bash_profile




parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
export HISTCONTROL=ignoreboth:erasedups



#########################################
#actual file

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


# Install git and git command line autocomplete
brew install git
brew install bash-completion

echo "if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi" >> ~/.bash_profile

git config --global core.excludesfile ~/.gitignore_global
curl "https://raw.githubusercontent.com/github/gitignore/master/Global/macOS.gitignore" >> ~/.gitignore_global
curl "https://raw.githubusercontent.com/github/gitignore/master/Global/Xcode.gitignore" >> ~/.gitignore_global

brew install cmake
brew cask install xquartz
brew install homebrew/x11/freeglut
brew install clang-format

echo "Now, please set xcode editor black and add two space indentation"
