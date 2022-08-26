echo "CRIANDO DIRETÓRIOS"

mkdir /adm
mkdir /publico
mkdir /sec
mkdir /ven

echo "CRIANDO GRUPOS DE USUÁRIOS"

groupadd GRP_ADM
groupadd GRP_SEC
groupadd GRP_VEN

echo "CRIANDO USUÁRIOS"

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha12345) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha12345) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha12345) -G GRP_ADM

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha12345) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha12345) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha12345) -G GRP_SEC

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha12345) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha12345) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha12345) -G GRP_VEN

echo "ESPECIFICANDO PERMISSÕES DOS DIRETÓRIOS"

chown root:GRP_ADM /adm
chown root:GRP_SEC /sec
chown root:GRP_VEN /ven

chmod 770 /adm
chmod 770 /sec
chmod 770 /ven
chmod 777 /publico

echo "PROCEDIMENTO FINALIZADO"