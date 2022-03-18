CREATE SERVER MY_HDB CLASS 'HANAODBC' USING
'Driver=/home/sapiqadm/sap/hdbclient/libodbcHDB.so;
ConnectTimeout=60000;
RECONNECT=0;
ServerNode=35.233.177.192:30015;
UID=SYSTEM;PWD=SAPgcp18;
'
;

