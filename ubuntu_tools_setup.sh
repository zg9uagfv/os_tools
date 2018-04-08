#!/bin/sh

#---delete something---#
sudo apt-get remove libreoffice-common unity-webapps-common
sudo apt-get remove thunderbird totem rhythmbox empathy brasero simple-scan gnome-mahjongg aisleriot gnome-mines cheese transmission-common gnome-orca webbrowser-app gnome-sudoku  landscape-client-ui-install 
sudo apt-get remove onboard deja-dup  

#---baisc---#
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install vim-gtk build-essential git-core subversion cmake automake autoconf openssh-server -y

#---Zeal---#
sudo add-apt-repository ppa:zeal-developers/ppa
sudo apt-get update
sudo apt-get install zeal -y

#---albert---#
sudo add-apt-repository ppa:nilarimogard/webupd8
sudo apt update
sudo apt install albert -y

#shaow-socks qt5
sudo add-apt-repository ppa:hzwhuang/ss-qt5
sudo apt-get update
sudo apt-get install shadowsocks-qt5 -y

#---java----#
sudo add-apt-repository ppa:webupd8team/java    
sudo apt-get update    
sudo apt-get install oracle-java8-installer

#first
sudo apt-get install unity-tweak-tool -y

#flatabulous主题安装

sudo add-apt-repository ppa:noobslab/themes
sudo apt-get update
sudo apt-get install flatabulous-theme -y

#numix图标
sudo add-apt-repository ppa:numix/ppa
sudo apt-get update
sudo apt-get install numix-gtk-theme numix-icon-theme-circle numix-wallpaper-* -y

sudo apt-get install fonts-wqy-microhei -y

sudo apt-get install shutter -y

#根据日出日落时间(设定经纬度)自动调节电脑屏幕的亮度、色彩(色温)，保护眼睛
sudo apt-get install redshift -y

#docker
sudo apt-get -y install apt-transport-https ca-certificates curl
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get -y install docker-ce

sudo apt-get install terminator guake -y

#Ubuntu下使用Monaco字体
curl -kL https://raw.github.com/cstrap/monaco-font/master/install-font-ubuntu.sh | bash



