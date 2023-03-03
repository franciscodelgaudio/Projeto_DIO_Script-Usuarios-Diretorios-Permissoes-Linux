#!/bin/bash

echo "Criando usuarios do sistema..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt senha)
passwd carlos -e

useradd maria -m -s /bin/bash -p $(openssl passwd -crypt senha)
passwd maria -e

useradd joao -m -s /bin/bash -p $(openssl passwd -crypt senha)
passwd joao -e

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt senha)
passwd debora -e

useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt senha)
passwd sebastiana -e

useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt senha)
passwd roberto -e

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt senha)
passwd josefina -e

useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt senha)
passwd amanda -e

useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt senha)
passwd rogerio -e

echo "Criacao de usuarios finalizada!"

echo "Criacao de grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao

usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto

usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio


echo "Criacao de grupos finalizada!"

echo "Criando diretorios..."

mkdir /diretorios
mkdir /diretorios/publico
mkdir /diretorios/adm
mkdir /diretorios/ven
mkdir /diretorios/sec

echo "Criacao de diretorios finalizada!"

echo "Alterando Permissoes..."

chown root:GRP_ADM /diretorios/adm
chown root:GRP_VEN /diretorios/ven
chown root:GRP_SEC /diretorios/sec
chmod 777 /diretorios/publico
chmod 770 /diretorios/adm
chmod 770 /diretorios/ven
chmod 770 /diretorios/sec

echo "Permissoes Alteradas!"
