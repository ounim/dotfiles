if [ -d /usr/lib/oracle/12.1 ]; then
    export ORACLE_BASE=/usr/lib/oracle/12.1 
    export ORACLE_HOME=$ORACLE_BASE/client64 
    export PATH=$PATH:$ORACLE_HOME/bin
    export TNS_ADMIN=/etc/oracle
    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/include/oracle/12.1/client64:/usr/lib/oracle/12.1/client64/lib 
fi
