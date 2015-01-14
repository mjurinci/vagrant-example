#! /bin/bash

echo "GENERAL APT-GET UPDATE"
# -qq implies -y --force-yes
apt-get -qq update

###########################
echo "INSTALL GIT"
apt-get -qq install git

###########################
echo "INSTALL VIM"
apt-get -qq install vim

###########################
echo "INSTALL CURL"
apt-get -qq install curl

###########################
echo "INSTALL python-software-properties"
apt-get -qq install python-software-properties

###########################
echo "ADD php5 repository"
add-apt-repository -y ppa:ondrej/php5
apt-get -qq update

###########################
echo "INSTALL php5 nginx"
apt-get -qq install nginx
apt-get -qq install php5-fpm
apt-get -qq install php5-cli
apt-get -qq install php5-curl

########################
echo "SETUP nginx"
cp /vagrant/web/default /etc/nginx/sites-available/default
service nginx restart

echo "Done!"