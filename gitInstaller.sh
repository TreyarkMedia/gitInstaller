#!/bin/bash
# nano gitInstaller.sh
# sudo chmod +x gitInstaller.sh
# ./gitInstaller.sh
set -o errexit
echo "The Script is Live"
sleep 1
read -p "Press enter to begin the git installer   " derp
echo "updating..."
sudo apt update && sudo apt upgrade -y
#echo "Installing Snap..."
#sudo apt install snapd -y
#sudo snap install core
echo "Installing Curl..."
sudo apt install curl -y
echo "Installing Git..."
mkdir /tmp/git
curl -o /tmp/git/git.tar.gz "https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.42.0.tar.gz"
cd /tmp/git && tar -xf git.tar.gz && rm -r git.tar.gz && cd -
cp -r /tmp/git ~/
echo "install aspell"
sudo apt install aspell -y
echo "sudo apt install libcurl4-openssl-dev -y"
sudo apt install libcurl4-openssl-dev -y
echo "sudo apt install libexpat1-dev -y"
sudo apt install libexpat1-dev -y
echo "sudo apt install gettext tcl -y"
sudo apt install gettext tcl -y
echo "sudo apt install make -y"
sudo apt install make -y
echo "sudo apt install gcc -y"
sudo apt install gcc -y
echo "sudo apt install libssl-dev -y"
sudo apt install libssl-dev -y
echo "sudo apt install zlib1g-dev -y"
sudo apt install zlib1g-dev -y
cd ~/git/git-2.42.0
pwd
echo "sudo make prefix=/usr/local all"
sudo make prefix=/usr/local all
echo "sudo make prefix=/usr/local install"
sudo make prefix=/usr/local install
echo "git --version"
git --version
# Upated 9.6.23 with git version 2.42.0
#https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.42.0.tar.gz
#was:https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.40.0.tar.gz
