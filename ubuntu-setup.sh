## USAGE

# Before running this (Crouton installation)
#   Instructions here: http://jeremyckahn.github.com/blog/2013/02/09/setting-up-a-local-development-environment-in-chrome-os/
#   Crouton repository: https://github.com/dnschneid/crouton
#   Run: sudo sh -e ~/Downloads/crouton -t xfce
#   Start: sudo startxfce4

# Command line
# yes | sh ubuntu_setup.sh

# forked from remichaignon/ubuntu_setup.sh





## PACKAGES


# Add sources
sudo add-apt-repository ppa:webupd8team/sublime-text-2;

wget https://dl-ssl.google.com/linux/linux_signing_key.pub;
sudo apt-key add linux_signing_key.pub;
rm linux_signing_key.pub;
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list';

sudo add-apt-repository ppa:transmissionbt/ppa;

sudo add-apt-repository ppa:libreoffice/ppa;

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59;
sudo add-apt-repository "deb http://repository.spotify.com stable non-free";

sudo add-apt-repository ppa:chris-lea/node.js


# Update
sudo apt-get update;


# Install
sudo apt-get install software-properties-common;
sudo apt-get install git;
sudo apt-get install sublime-text;
sudo apt-get install google-chrome-stable;
sudo apt-get install gimp;
sudo apt-get install inkscape;
sudo apt-get install transmission;
sudo apt-get install libreoffice;
sudo apt-get install vlc vlc-plugin-pulse mozilla-plugin-vlc;
sudo apt-get install spotify-client;
sudo apt-get install python;
sudo apt-get install python-software-properties;
sudo apt-get install g++;
sudo apt-get install golang;
sudo apt-get install make;
sudo apt-get install nodejs;
sudo apt-get install npm;
sudo apt-get install openjdk-7-jdk;
sudo apt-get install ruby1.9.1;
sudo apt-get install jruby;
sudo apt-get install curl;
sudo apt-get install keychain;

# NIDEGEN ADDS:

sudo apt-get install ccache;

# OPENCV

sudo apt-get install build-essential
sudo apt-get install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
sudo apt-get install python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev

mkdir ~/Code/opencv
cd ~/Code/opencv
git clone https://github.com/Itseez/opencv.git
mkdir release
cd release
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local ..
make
sudo make install


## LINKS


# Sublime Text
sudo ln -s /usr/lib/Sublime\ Text\ 2/sublime_text /usr/bin/subl;





## CUSTOMIZATION


# SSH agent
cat >> ~/.bash_profile << "EOF"
eval `keychain --eval --agents ssh id_rsa`
EOF

# Git
sudo wget -O ~/.git-completion.sh https://raw.github.com/git/git/master/contrib/completion/git-completion.bash;
sudo wget -O ~/.git-prompt.sh https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh;
cat >> ~/.bashrc << "EOF"

# Git auto-completion and prompt
source ~/.git-completion.sh
source ~/.git-prompt.sh

PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
PROMPT_COMMAND='__git_ps1 "\u@\h:\w" "\\\$ "'
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWCOLORHINTS=1
EOF

# Git aliases
git config --global alias.s status;
git config --global alias.co checkout;
git config --global alias.ci commit;





## FURTHER INSTRUCTIONS


# SSH key
echo "";
echo "SETUP COMPLETE!";
echo "";
echo "Now don't forget to create your SSH key, to do so:";
echo "ssh-keygen -t rsa -C 'your_email@example.com'";
echo "And add the key to github.";
