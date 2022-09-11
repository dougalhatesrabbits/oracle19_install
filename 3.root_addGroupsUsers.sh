# basic
groupadd -g 54321 oinstall
groupadd -g 54322 dba
groupadd -g 54323 oper 

# dedicated
groupadd -g 54324 backupdba
groupadd -g 54325 dgdba
groupadd -g 54326 kmdba
groupadd -g 54327 asmdba
groupadd -g 54328 asmoper
groupadd -g 54329 asmadmin
groupadd -g 54330 racdba

useradd -u 54321 -g oinstall -G dba,oper,backupdba,dgdba,kmdba,racdba,asmdba,asmoper,asmadmin oracle 
#useradd -u 54321 -g oinstall -G dba,oper oracle

passwd oracle

cat/etc/selinux/config
sed -i 's/SELINUX=.*/SELINUX=permissive/g' /etc/selinux/config

systemctl stop firewalld
systemctl disable firewalld
