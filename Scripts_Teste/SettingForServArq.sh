#!/bin/bash

cd /

#Criação de diretorios
echo "Criação de pastas"
mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

#criação de grupos
echo "Criando Grupos"
groupadd GRP_ADM
echo "grupo adm criado"
groupadd GRP_VEN
echo "grupo vendas criado"
groupadd GRP_SEC
echo "grupo sec criado"

#criação dos usuarios
echo "Criação de usuarios"
useradd carlos -m -c "carlos" -s /bin/bash -G GRP_ADM -p $(openssl passwd Senha123)
useradd maria -m -c "maria" -s /bin/bash -G GRP_ADM -p $(openssl passwd Senha123)
useradd joão -m -c "joão" -s /bin/bash -G GRP_ADM -p $(openssl passwd Senha123)
useradd debora -m -c "debora" -s /bin/bash -G GRP_VEN -p $(openssl passwd Senha123)
useradd sebastiana -m -c "sebastiana" -s /bin/bash -G GRP_VEN -p $(openssl passwd Senha123)
useradd roberto -m -c "roberto" -s /bin/bash -G GRP_VEN -p $(openssl passwd Senha123)
useradd josefina -m -c "josefina" -s /bin/bash -G GRP_SEC -p $(openssl passwd Senha123)
useradd amanda -m -c "amanda" -s /bin/bash -G GRP_SEC -p $(openssl passwd Senha123)
useradd rogerio -m -c "rogerio" -s /bin/bash -G GRP_SEC -p $(openssl passwd Senha123)

#mudandno as permiçoes da pastas
echo "Especficano Permissões"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /public

echo "FIM...."