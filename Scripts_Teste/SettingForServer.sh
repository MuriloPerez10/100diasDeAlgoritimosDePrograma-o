#!/bin/bash

cd /

#atualizando servidor
apt update
echo "atualizando servidor.."
apt upgrade -y
echo "Servidor atualizador"

#instalando apache2
echo "Instalando servidor Apache"
apt install apache2 -y
echo "Servidor web instalado"
apt install unzip -y

#baixndo projeto
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

mv linux-site-dio  /var/www/html/


