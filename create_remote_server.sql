CREATE SERVER MY_HDB CLASS 'HANAODBC' USING
'Driver=<path_to_file>/libodbcHDB.so;
ConnectTimeout=60000;
RECONNECT=0;
ServerNode=<hana_host_or_IP>:30015;
UID=<hana_user>;PWD=<hana_password>;
'
;
