#!/bin/sh

#---delete something---#
sudo apt-get remove libreoffice-common unity-webapps-common
sudo apt-get remove thunderbird totem rhythmbox empathy brasero simple-scan gnome-mahjongg aisleriot gnome-mines cheese transmission-common gnome-orca webbrowser-app gnome-sudoku  landscape-client-ui-install 
sudo apt-get remove onboard deja-dup  

#---baisc---#
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install git-core subversion build-essential cmake
sudo apt-get install openssh-server  

#---Zeal---#
sudo add-apt-repository ppa:zeal-developers/ppa
sudo apt-get update
sudo apt-get install zeal

#---albert---#
sudo add-apt-repository ppa:nilarimogard/webupd8
sudo apt update
sudo apt install albert

#---java----#
sudo add-apt-repository ppa:webupd8team/java    
sudo apt-get update    
sudo apt-get install oracle-java8-installer
