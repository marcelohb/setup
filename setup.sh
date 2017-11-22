#!/bin/sh
sudo apt-get update 
echo INSTALL JAVA 8
add-apt-repository ppa:openjdk-r/ppa -y
apt-get update 
apt-get install -y openjdk-8-jdk

echo INSTALL GIT
apt-get install git -y

echo INSTALL DOCKER CE
sudo apt-get install docker-compose -y
#Pertencer a root
sudo groupadd docker
sudo usermod -aG docker $USER

echo INSTALL DBEAVER
cd ~/Downloads
wget http://dbeaver.jkiss.org/files/dbeaver-ce_latest_amd64.deb
sudo dpkg -i dbeaver-ce_latest_amd64.deb

echo INSTALL ATOM
wget https://atom.io/download/deb
sudo dpkg -i atom-amd64.deb

echo INSTALL SUBLIME
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text -y

echo INSTALL GITKRAKEN
wget -o gitkraken.deb https://www.gitkraken.com/download/linux-deb
sudo dpkg -i gitkraken-amd64.deb

echo INSTALL VLC
sudo apt-get install vlc -y

echo INSTALL GOOGLE CHROME
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update ; sudo apt-get install google-chrome-stable -y

echo INSTALL DROPBOX
wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
./.dropbox-dist/dropboxd

echo INSTALL MEGA
wget https://mega.nz/linux/MEGAsync/xUbuntu_17.10/amd64/megasync-xUbuntu_17.10_amd64.deb
sudo dpkg -i megasync-xUbuntu_17.10_amd64.deb

echo INSTALL GPARTED
sudo apt-get install gparted -y

echo INSTALL MYSQL WORKBENCH
sudo apt-get install mysql-workbench -y

echo INSTALL FASTOREDIS
wget http://fastoredis.com/download_linux_p.html?platform=linux&filename=fastoredis-1.9.1-x86_64.deb
sudo dpkg -i fastoredis-1.9.1-x86_64.deb

echo INSTALL FRANS
wget https://github.com/meetfranz/franz/releases/download/v5.0.0-beta.13/franz_5.0.0-beta.13_amd64.deb
sudo dpkg -i franz_5.0.0-beta.13_amd64.deb

echo INSTALL POSTMAN
wget -q https://dl.pstmn.io/download/latest/linux?arch=64 -O postman.tar.gz
tar -xzf postman.tar.gz
rm postman.tar.gz
mkdir ~/Programas
mv Postman ~/Programas/

echo INSTALL GRADLE
wget https://services.gradle.org/distributions/gradle-4.3.1-all.zip
mkdir /opt/gradle
unzip -d /opt/gradle gradle-4.3.1-all.zip
ls /opt/gradle/gradle-4.3.1

echo INSTALL GRAFICOS
sudo apt-get install gimp -y
sudo apt-get install pinta -y
sudo apt-get install kazam -y

echo INSTALL SPOTIFY
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client

sudo add-apt-repository ppa:webupd8team/y-ppa-manager
sudo apt-get upgrade
sudo apt-get install y-ppa-manager

sudo apt-get autoremove -y

sudo apt --fix-broken install