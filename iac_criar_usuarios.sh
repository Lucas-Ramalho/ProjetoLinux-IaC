#!/bin/bash

echo "Criação dos diretórios...."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec


echo "Criação dos grupos de usuários...."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criação dos usuários e especificando os grupos...."

useradd luke -m -c "Luke Skywalker" -s /bin/bash -p $(openssl passwd may4th) -G GRP_ADM
useradd leia -m -c "Leia Organa" -s /bin/bash -p $(openssl passwd may4th) -G GRP_ADM
useradd han -m -c "Han Solo" -s /bin/bash -p $(openssl passwd may4th) -G GRP_ADM

useradd yoda -m -c "Yoda" -s /bin/bash -p $(openssl passwd may4th) -G GRP_VEN
useradd obi-wan -m -c "Obi-Wan Kenobi" -s /bin/bash -p $(openssl passwd may4th) -G GRP_VEN
useradd anakin -m -c "Darth Vader" -s /bin/bash -p $(openssl passwd may4th) -G GRP_VEN

useradd r2d2 -m -c "R2-D2" -s /bin/bash -p $(openssl passwd may4th) -G GRP_SEC
useradd c3po -m -c "C3PO" -s /bin/bash -p $(openssl passwd may4th) -G GRP_SEC
useradd chewie -m -c "Chewbacca" -s /bin/bash -p $(openssl passwd may4th) -G GRP_SEC

echo "Especificação das permissões dos diretórios....."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico
 
echo "Script finalizado...."

