#!/bin/sh

sudo echo "Installing Java8"
sudo echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections

sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update -y

sudo apt-get -qq install build-essential rsync telnet screen man wget -y
sudo apt-get -qq install strace tcpdump -y
sudo apt-get -qq install libssl-dev zlib1g-dev libcurl3-dev libxslt-dev -y
sudo apt-get -qq install software-properties-common python-software-properties -y

sudo apt-get -qq install oracle-java8-installer -y

sudo echo "Installing Git"
sudo apt-get install git -y

sudo echo "Installing Scala 2.11.7"

sudo apt-get remove scala-library scala
sudo wget http://www.scala-lang.org/files/archive/scala-2.11.7.deb
sudo dpkg -i scala-2.11.7.deb
sudo apt-get update
sudo apt-get -f install scala

sudo echo "Installing sbt 0.13.8"
sudo wget http://dl.bintray.com/sbt/debian/sbt-0.13.8.deb
sudo dpkg -i sbt-0.13.8.deb 
sudo apt-get update
sudo apt-get -f install sbt

