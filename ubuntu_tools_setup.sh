#!/bin/sh

#---delete something---#
sudo apt-get remove libreoffice-common unity-webapps-common -y
sudo apt-get remove thunderbird totem rhythmbox empathy brasero simple-scan gnome-mahjongg aisleriot gnome-mines cheese transmission-common gnome-orca webbrowser-app gnome-sudoku  landscape-client-ui-install -y 
sudo apt-get remove onboard deja-dup -y  

#---baisc---#
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install vim-gtk build-essential git-core subversion cmake automake autoconf openssh-server -y

#---Zeal---#
sudo add-apt-repository ppa:zeal-developers/ppa -y
sudo apt-get update
sudo apt-get install zeal -y

#---albert---#
sudo add-apt-repository ppa:nilarimogard/webupd8 -y
sudo apt update
sudo apt install albert -y

#shaow-socks qt5
sudo add-apt-repository ppa:hzwhuang/ss-qt5 -y
sudo apt-get update
sudo apt-get install shadowsocks-qt5 -y

#---java----#
sudo add-apt-repository ppa:webupd8team/java -y 
sudo apt-get update    
sudo apt-get install oracle-java8-installer -y

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

#docker
sudo apt-get -y install apt-transport-https ca-certificates curl -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" -y
sudo apt-get update
sudo apt-get -y install docker-ce -y

sudo apt-get install terminator guake -y

#Ubuntu下使用Monaco字体
curl -kL https://raw.github.com/cstrap/monaco-font/master/install-font-ubuntu.sh
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

#Opencv-3.4.0
sudo apt-get remove x264 libx264-dev -y
sudo apt-get install build-essential checkinstall cmake pkg-config yasm -y
sudo apt-get install git gfortran -y
sudo apt-get install libjpeg8-dev libjasper-dev libpng12-dev -y
# If you are using Ubuntu 16.04
sudo apt-get install libtiff5-dev -y

sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libdc1394-22-dev -y
sudo apt-get install libxine2-dev libv4l-dev -y
sudo apt-get install libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev -y
sudo apt-get install qt5-default libgtk2.0-dev libtbb-dev -y
sudo apt-get install libatlas-base-dev -y
sudo apt-get install libfaac-dev libmp3lame-dev libtheora-dev -y
sudo apt-get install libvorbis-dev libxvidcore-dev -y
sudo apt-get install libopencore-amrnb-dev libopencore-amrwb-dev -y
sudo apt-get install x264 v4l-utils -y

# Optional dependencies
sudo apt-get install libprotobuf-dev protobuf-compiler -y
sudo apt-get install libgoogle-glog-dev libgflags-dev -y
sudo apt-get install libgphoto2-dev libeigen3-dev libhdf5-dev doxygen -y

sudo apt-get install python-dev python-pip python3-dev python3-pip -y
sudo -H pip2 install -U pip numpy
sudo -H pip3 install -U pip numpy

#mkdir /tmp/Opencv && cd /tmp/Opencv && mdkir build 
#git clone https://github.com/opencv/opencv.git
#cd opencv 
#git checkout 3.4.0
#cd ..

#git clone https://github.com/opencv/opencv_contrib.git
#cd opencv_contrib
#git checkout 3.4.0
#cd ..

#cd build
#cmake -D CMAKE_BUILD_TYPE=RELEASE \
#      -D CMAKE_INSTALL_PREFIX=/usr/local \
#      -D INSTALL_C_EXAMPLES=ON \
#      -D INSTALL_PYTHON_EXAMPLES=ON \
#      -D WITH_TBB=ON \
#      -D WITH_V4L=ON \
#      -D WITH_QT=ON \
#      -D WITH_OPENGL=ON \
#      -D OPENCV_EXTRA_MODULES_PATH=../opencv_contrib/modules \
#      -D BUILD_EXAMPLES=ON ../opencv

#make -j8
#sudo make install
#sudo sh -c 'echo "/usr/local/lib" >> /etc/ld.so.conf.d/opencv.conf'
#sudo ldconfig

