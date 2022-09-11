yum install -y bc    
yum install -y binutils
yum install -y compat-libcap1
yum install -y compat-libstdc++-33
#yum install -y dtrace-modules
#yum install -y dtrace-modules-headers
#yum install -y dtrace-modules-provider-headers
#yum install -y dtrace-utils
yum install -y elfutils-libelf
yum install -y elfutils-libelf-devel
yum install -y fontconfig-devel
yum install -y gcc
yum install -y gcc-c++
yum install -y glibc
yum install -y glibc-devel
yum install -y ksh
yum install -y libaio
yum install -y libaio-devel
#yum install -y libdtrace-ctf-devel
yum install -y libXrender
yum install -y libXrender-devel
yum install -y libX11
yum install -y libXau
yum install -y libXi
yum install -y libXtst
yum install -y libgcc
yum install -y librdmacm-devel
yum install -y libstdc++
yum install -y libstdc++-devel
yum install -y libxcb
yum install -y make
yum install -y net-tools # Clusterware
yum install -y nfs-utils # ACFS
yum install -y perl      # Rocky 8
#yum install -y python # ACFS
#yum install -y python-configshell # ACFS
#yum install -y python-rtslib # ACFS
#yum install -y python-six # ACFS
yum install -y targetcli # ACFS
yum install -y smartmontools
yum install -y sysstat
yum install -y targetcli
dnf install -y unixODBC

#for OL 8
sudo yum install -y libnsl
sudo yum install -y libnsl.i686
sudo yum install -y libnsl2
sudo yum install -y libnsl2.i686
#sudo yum install -y libxcrypt-compat
sudo yum install -y compat-libpthread-nonshared 

# Fix for Oracle on Fedora.
#rm -f /usr/lib64/libnsl.so.1
#rm -f /usr/lib/libnsl.so.1
#ln -s /usr/lib64/libnsl.so.3.0.0 /usr/lib64/libnsl.so.1
#ln -s /usr/lib/libnsl.so.3.0.0 /usr/lib/libnsl.so.1
sudo yum update -y

