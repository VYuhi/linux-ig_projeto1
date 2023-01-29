#!/bin/bash

echo "Criando Diretorios, grupos e usuarios com as suas devidas permições a partir de seu cargo"

echo "Publico"

mkdir /publico

chown root:root /publico

chmod 777 /publico

echo "Administrativo"

mkdir /adm

groupadd GRP_ADM

chown root:GRP_ADM /adm

useradd carlos -c "Carlos Fonseca" -s /bin/bash -m -G GRP_ADM -p $(openssl passwd senha123)
passwd carlos -e

useradd maria -c "Maria Gomes" -s /bin/bash -m -G GRP_ADM -p $(openssl passwd senha123)
passwd maria -e

useradd joao -c "Joao Pedro" -s /bin/bash -m -G GRP_ADM -p $(openssl passwd senha123)
passwd joao -e

chmod 770 /adm

echo "Vendas"

mkdir /ven

groupadd GRP_VEN

chown root:GRP_VEN /ven

useradd debora -c "Debora Cristina" -s /bin/bash -m -G GRP_VEN -p $(openssl passwd senha123)
passwd debora -e

useradd sebastiana -c "Sebastiana Roberta" -s /bin/bash -m -G GRP_VEN -p $(openssl passwd senha123)
passwd sebastiana -e

useradd  roberto -c "Roberto Junior" -s /bin/bash -m -G GRP_VEN -p $(openssl passwd senha123)
passwd roberto -e

chmod 770 /ven

echo "Secretariado"

mkdir /sec

groupadd GRP_SEC

chown root:GRP_SEC /sec

useradd josefina -c "Josefina Moura" -s /bin/bash -m -G GRP_SEC -p $(openssl passwd senha123)
passwd josefina -e

useradd amanda -c "Amanda Amora" -s /bin/bash -m -G GRP_SEC -p $(openssl passwd senha123)
passwd amanda -e

useradd rogerio -c "Rogerio Tomate" -s /bin/bash -m -G GRP_SEC -p $(openssl passwd snha123)
passwd rogerio -e

chmod 770 /sec

echo "Script Finalizado"
