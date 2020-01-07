#!/bin/sh

#---delete something---#
sudo apt-get remove libreoffice-common unity-webapps-common -y
sudo apt-get remove -y thunderbird totem rhythmbox empathy brasero simple-scan gnome-mahjongg aisleriot gnome-mines cheese transmission-common gnome-orca webbrowser-app gnome-sudoku  landscape-client-ui-install 
sudo apt-get remove onboard deja-dup -y

#---baisc---#
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install vim-gtk build-essential git-core subversion cmake automake autoconf openssh-server -y

#---mathpix-snipping-tool---#截图并生成Markdown的数学公式
https://snapcraft.io/mathpix-snipping-tool

#---Zeal---#
sudo add-apt-repository ppa:zeal-developers/ppa -y
sudo apt-get update
sudo apt-get install zeal -y

#---albert---#
#ubuntu-18.04 https://albertlauncher.github.io/docs/installing/
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_18.04/ /' > /etc/apt/sources.list.d/home:manuelschneid3r.list"
wget -nv https://download.opensuse.org/repositories/home:manuelschneid3r/xUbuntu_18.04/Release.key -O Release.key
sudo apt-key add - < Release.key
sudo apt-get update
sudo apt-get install albert

#shaow-socks qt5
sudo add-apt-repository ppa:hzwhuang/ss-qt5 -y
sudo apt-get update
sudo apt-get install shadowsocks-qt5 -y

#---java----#
sudo add-apt-repository ppa:linuxuprising/java
sudo apt install oracle-java13-installer
sudo apt install oracle-java13-set-default
java -version

#first
sudo apt-get install unity-tweak-tool -y

#flatabulous主题安装

sudo add-apt-repository ppa:noobslab/themes -y
sudo apt-get update
sudo apt-get install flatabulous-theme -y

#numix图标
sudo add-apt-repository ppa:numix/ppa -y
sudo apt-get update
sudo apt-get install numix-gtk-theme numix-icon-theme-circle numix-wallpaper-* -y

sudo apt-get install fonts-wqy-microhei -y

sudo apt-get install shutter -y

#根据日出日落时间(设定经纬度)自动调节电脑屏幕的亮度、色彩(色温)，保护眼睛
sudo apt-get install redshift -y

#自动更换壁纸
#For Ubuntu, a PPA is also available that backports newer releases to LTS & stable:
sudo add-apt-repository ppa:peterlevi/ppa
sudo apt-get update
sudo apt-get install variety variety-slideshow

#youtube-dl交互式

sudo apt install npm

npm install -g youtube-dl-interactive

#docker
sudo apt-get -y install apt-transport-https ca-certificates curl
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" -y
sudo apt-get update
sudo apt-get -y install docker-ce

sudo apt-get install terminator guake -y

#Ubuntu下使用Monaco字体
wget -c https://raw.github.com/cstrap/monaco-font/master/install-font-ubuntu.sh
chmod +x ./install-font-ubuntu.sh
sudo ./install-font-ubuntu.sh https://github.com/todylu/monaco.ttf/blob/master/monaco.ttf?raw=true
rm ./install-font-ubuntu.sh

# update nvidia
sudo add-apt-repository ppa:xorg-edgers/ppa -y #添加ppa源
sudo add-apt-repository ppa:graphics-drivers/ppa -y #添加ppa源
sudo apt-get update #更新apt-get

#安装SMPlayer
sudo apt-get install smplayer -y

#安装vlc播放器
sudo apt-get install vlc -y

#安装mpv播放器
sudo apt-get install mpv -y

#wps office
https://www.wps.cn/product/wpslinux#

#sogou input
https://pinyin.sogou.com/linux/?r=pinyin

#zeal
sudo add-apt-repository ppa:zeal-developers/ppa -y
sudo apt-get update
sudo apt-get install zeal -y

#系统记录清理工具
sudo apt install bleachbit -y

#Markdown typora
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE
sudo add-apt-repository 'deb https://typora.io linux/' -y
sudo apt-get update
sudo apt-get install typora -y

#Golden dict
sudo apt install goldendict -y

#使用mosh替代ssh
sudo apt-get install mosh
