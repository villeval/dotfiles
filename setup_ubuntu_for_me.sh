# update repos
sudo apt-get update

# install basic utils
sudo apt install curl vim -y

# install openjdk 11
sudo apt install openjdk-11-jdk -y

# install keepass
sudo apt install keepass2 -y

# install gradle
wget https://services.gradle.org/distributions/gradle-5.6.1-bin.zip
sudo mkdir /opt/gradle
sudo unzip -d /opt/gradle gradle-5.6.1-bin.zip
sudo bash -c 'echo "export PATH=\$PATH:/opt/gradle/gradle-5.6.1/bin" >> /home/ville/.bashrc'
rm gradle-5.6.1-bin.zip

# install ansible
sudo apt install software-properties-common -y
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt-get update
sudo apt install ansible -y

# install docker
sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get install docker-ce docker-ce-cli containerd.io -y
sudo usermod -a -G docker $USER

# install node.js
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs

# install aws cli
sudo apt install awscli -y

# install i3 and utils
sudo apt install i3 -y
sudo apt-get install feh -y
sudo apt-get install xbacklight -y

# install spotify
sudo snap install spotify

# install visual studio code
sudo snap install code --classic

# install intellij idea
sudo snap install intellij-idea-community --classic

# install gnome tweaks tool
sudo apt install gnome-tweaks -y

# install paper theme
#sudo add-apt-repository ppa:snwh/ppa
#sudo apt install paper-icon-theme

# disable ufw bypass of docker
# 'sudo nano /etc/default/docker and add the following line: DOCKER_OPTS="--iptables=false"'
