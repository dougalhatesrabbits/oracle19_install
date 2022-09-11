# as Oracle user
# Unzip software.
cd $ORACLE_HOME
unzip -oq /home/oracle/scripts/LINUX.X64_193000_db_home.zip

# Fake Oracle Linux 7.
export CV_ASSUME_DISTID=OEL7.6

# Fix for linking error 
#cd $ORACLE_HOME/lib/stubs
#mv libc.so libc.so.hide
#mv libc.so.6 libc.so.6.hide

# Interactive mode.
#./runInstaller

# Silent mode.
./runInstaller -ignorePrereq -waitforcompletion -silent                        \
    -responseFile ${ORACLE_HOME}/install/response/db_install.rsp               \
    oracle.install.option=INSTALL_DB_SWONLY                                    \
    ORACLE_HOSTNAME=${ORACLE_HOSTNAME}                                         \
    UNIX_GROUP_NAME=oinstall                                                   \
    INVENTORY_LOCATION=${ORA_INVENTORY}                                        \
    SELECTED_LANGUAGES=en,en_GB                                                \
    ORACLE_HOME=${ORACLE_HOME}                                                 \
    ORACLE_BASE=${ORACLE_BASE}                                                 \
    oracle.install.db.InstallEdition=EE                                        \
    oracle.install.db.OSDBA_GROUP=dba                                          \
    oracle.install.db.OSOPER_GROUP=oper                                        \
    oracle.install.db.OSBACKUPDBA_GROUP=backupdba                              \
    oracle.install.db.OSDGDBA_GROUP=dgdba                                      \
    oracle.install.db.OSKMDBA_GROUP=kmdba                                      \
    oracle.install.db.OSRACDBA_GROUP=racdba                                    \
    SECURITY_UPDATES_VIA_MYORACLESUPPORT=false                                 \
    DECLINE_SECURITY_UPDATES=true

netca -silent -responseFile /u01/app/oracle/product/19.0.0/dbhome_1/assistants/netca/netca.rsp
