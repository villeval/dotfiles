# update packages
sudo apt-get update

# install basic utils
sudo apt install curl vim -y

# install openjdk 11
sudo apt install openjdk-11-jdk -y

# install keepassxc
sudo apt install keepassxc -y

# install gradle
wget https://services.gradle.org/distributions/gradle-6.0.1-bin.zip
sudo mkdir /opt/gradle
sudo unzip -d /opt/gradle gradle-6.0.1-bin.zip
rm gradle-6.0.1-bin.zip

# install ansible
echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" | sudo tee -a /etc/apt/sources.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
sudo apt update
sudo apt install ansible -y

# install docker ce
sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common -y
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io -y

# install node.js
curl -sL https://deb.nodesource.com/setup_12.x | sudo bash -
sudo apt-get install nodejs -y

# install aws cli
sudo apt install awscli -y

# install go
wget https://dl.google.com/go/go1.13.5.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.13.5.linux-amd64.tar.gz
rm go1.13.5.linux-amd64.tar.gz

# install visual studio code
sudo touch /etc/apt/sources.list.d/vscode.list
echo deb [arch=amd64] http://packages.microsoft.com/repos/vscode stable main | sudo tee -a /etc/apt/sources.list.d/vscode.list
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo apt-get update
sudo apt-get install code -y

# install intellij idea
wget https://download.jetbrains.com/idea/ideaIU-2019.3.1.tar.gz
sudo tar -xzf ideaIU-2019.3.1.tar.gz -C /opt
rm ideaIU-2019.3.1.tar.gz

# install spotify
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client -y

# install chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb -y

# download dotfiles
git clone https://github.com/villeval/dotfiles.git
mv dotfiles $HOME/.dotfiles


# todo / decide if needed
# install paper theme

# install gnome tweaks tool
# currently buster comes with gnome-tweaks by default
#sudo apt install gnome-tweaks -y

