#!/bin/bash

#atualizando o servidor
echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y
echo "Instalando apache e unzip"
apt-get install apache2 -y
apt-get install unzip -y


echo "Baixando e copiando os arquivos da aplicação..."
#arrumando ambiente para hospedagem do site no servidor apache
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
echo "colocando o site no ar"
cd linux-site-dio-main
cp -R * /var/www/html/


