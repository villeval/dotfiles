#/bin/bash

JAVA_VERSION=openjdk-11-jdk
GRADLE_VERSION=5.6.1

# update packages
sudo apt-get update

# install basic utils
sudo apt install curl -y

# install openjdk
sudo apt install $JAVA_VERSION -y

# install gradle
if [ -d "/opt/gradle" ];
then 
  echo "INFO: Gradle directory found already"
else
  wget https://services.gradle.org/distributions/gradle-$GRADLE_VERSION-bin.zip
  sudo mkdir /opt/gradle
  sudo unzip -d /opt/gradle gradle-$GRADLE_VERSION-bin.zip
  # fix the version to variable
  sudo bash -c 'echo "export PATH=\$PATH:/opt/gradle/gradle-5.6.1/bin" >> /home/ville/.bashrc'
  rm gradle-$GRADLE_VERSION-bin.zip
  echo "INFO: Gradle installed successfully!"
fi

# install ansible
sudo apt install software-properties-common -y
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt-get update
sudo apt install ansible -y

# install docker
sudo apt-get install apt-transport-https ca-certificates curl gnupg2 software-properties-common -y
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io -y
sudo usermod -a -G docker $USER

# install node.js
sudo apt install nodejs -y

# install aws cli
sudo apt-get install awscli -y

# install intellij idea
if [ -d /opt/idea-IC-192.6262.58 ];
then
  echo "INFO: Intellij IDEA already installed"
else
  wget https://download.jetbrains.com/idea/ideaIC-2019.2.1.tar.gz
  sudo tar -xzf ideaIC-2019.2.1.tar.gz -C /opt
  rm ideaIC-2019.2.1.tar.gz
fi

# install visual studio code
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt-get update
sudo apt install code

# install virtualbox
#wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
#wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
#sudo add-apt-repository "deb http://download.virtualbox.org/virtualbox/debian bionic contrib"
#sudo apt update
#sudo apt install virtualbox-6.0 -y

# install chrome
if dpkg -l | grep -q chrome
then
  echo "Chrome is already installed"
else
  wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
  sudo apt install ./google-chrome-stable_current_amd64.deb -y
  rm google-chrome-stable_current_amd64.deb
fi

# install keepass
sudo apt install keepass2

# set configs
sudo sed -i 's/# set bell-style none/set bell-style none/' /etc/inputrc

# install i3wm
sudo apt install i3

# install spotify
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client
