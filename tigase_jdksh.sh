#!/bin/bash

apt-get install nfs-common

#mount -t nfs 192.168.100.254:/share /mnt

#cp /mnt/software/jdk-8u45ulinux-x64.tar.gz  .

wget http://download.oracle.com/otn-pub/java/jdk/8u51-b16/jdk-8u51-linux-i586.tar.gz

tar zxvf jdk-8u51-linux-i586.tar.gz  -C /var/local/

cd /var/local/

ln -s jdk1.8.0_45/ jdk


echo "export JAVA_HOME=/var/local/jdk" >> /etc/profile
echo "export PATH=$JAVA_HOME/bin:$JAVA_HOME/jre/bin:$PATH" >> /etc/profile
echo "export CLASSPATH=.:$JAVA_HOME/lib:$JAVA_HOME/jre/lib" >> /etc/profile
