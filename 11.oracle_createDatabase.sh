# as oracle user
# set display
DISPLAY=oracle:0.0; export DISPLAY

# Start the listener.
#lsnrctl start

# Interactive mode.
#dbca

# Silent mode.
dbca -silent -createDatabase                                                   \
     -responseFile ${ORACLE_HOME}/assistants/dbca/dbca.rsp                     \
     -templateName General_Purpose.dbc                                         \
     -gdbname ${ORACLE_SID}                                                    \
     -sid  ${ORACLE_SID}                                                       \
     -characterSet AL32UTF8                                                    \
     -sysPassword SysPassword1                                                 \
     -systemPassword SysPassword1                                              \
     -createAsContainerDatabase true                                           \
     -numberOfPDBs 1                                                           \
     -pdbName ${PDB_NAME}                                                      \
     -pdbAdminPassword PdbPassword1                                            \
     -databaseType MULTIPURPOSE                                                \
     -memoryMgmtType auto_sga                                                  \
     -totalMemory 2000                                                         \
     -storageType FS                                                           \
     -datafileDestination "${DATA_DIR}"                                        \
     -emConfiguration NONE                                                     \
     -ignorePreReqs
