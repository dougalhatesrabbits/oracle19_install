sudo yum update -y

wget http://mirror.centos.org/centos/7/os/x86_64/Packages/compat-libstdc++-33-3.2.3-72.el7.x86_64.rpm
wget http://mirror.centos.org/centos/7/os/x86_64/Packages/compat-libcap1-1.10-7.el7.x86_64.rpm
#wget https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/getPackage/oracle-database-preinstall-19c-1.0-2.el8.x86_64.rpm

sudo yum localinstall -y compat-libstdc++-33-3.2.3-72.el7.x86_64.rpm
sudo yum localinstall -y compat-libcap1-1.10-7.el7.x86_64.rpm

sudo yum localinstall -y oracle-database-preinstall-19c-1.0-1.el7.x86_64.rpm
#sudo yum install -y oracle-database-preinstall-19c-1.0-2.el8.x86_64.rpm
