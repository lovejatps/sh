#!/bin/bash

hostIP=127.0.0.1

echo "hostname:"
read name
echo "${name}" > /etc/hostname
hostname ${name}

echo "IP:"
read ip
#echo "${ip} ${name}.wodezoon.com" ${name} >> /etc/hosts
#echo "${hostIP} ${name}.wodezoon.com" ${name} >> /etc/hosts
sed -i "2 a\\${ip} ${name}.wodezoon.com  ${name}" /etc/hosts
sed -i "3 a\\${hostIP} ${name}.wodezoon.com  ${name}" /etc/hosts


echo "deb http://mirrors.sohu.com/ubuntu/ trusty main restricted universe multiverse" > /etc/apt/sources.list
echo "deb http://mirrors.sohu.com/ubuntu/ trusty-security main restricted universe multiverse" >> /etc/apt/sources.list
echo "deb http://mirrors.sohu.com/ubuntu/ trusty-updates main restricted universe multiverse" >> /etc/apt/sources.list
echo "deb http://mirrors.sohu.com/ubuntu/ trusty-proposed main restricted universe multiverse" >> /etc/apt/sources.list
echo "deb http://mirrors.sohu.com/ubuntu/ trusty-backports main restricted universe multiverse" >> /etc/apt/sources.list
echo "deb-src http://mirrors.sohu.com/ubuntu/ trusty main restricted universe multiverse" >> /etc/apt/sources.list
echo "deb-src http://mirrors.sohu.com/ubuntu/ trusty-security main restricted universe multiverse" >> /etc/apt/sources.list
echo "deb-src http://mirrors.sohu.com/ubuntu/ trusty-updates main restricted universe multiverse" >> /etc/apt/sources.list
echo "deb-src http://mirrors.sohu.com/ubuntu/ trusty-proposed main restricted universe multiverse" >> /etc/apt/sources.list
echo "deb-src http://mirrors.sohu.com/ubuntu/ trusty-backports main restricted universe multiverse" >> /etc/apt/sources.list

apt-get update


#apt-get install jdk8




#apt-get install jdk8



