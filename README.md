# IQ-Pull-From-HANA

Outline a mechanism that can be used to copy data from SAP HANA to SAP IQ or SAP HANA Cloud, data lake relational engine (IQ)

1.	create_remote_server.sql -- create the server in HDLRE/IQ that points to HANA
2.	create_HANA_table.sql -- from HDLRE/IQ, log in to HANA and create a table for testing
3.	create_IQ_table.sql -- in HDLRE/IQ, create a table to load and store the HANA data in HDLRE
4.	create_IQ_temp_table.sql -- create the proxy, or existing, table that points to the HANA object. This script uses a temporary table construct so that the table is only around for the duration of the connection.
5.	create_procedure.sql -- THis is a sample procedure that will copy the HANA data to a staging table, then merge the staging table with the permanent table in HDLRE/IQ. This procedure only handles data that has been inserted or updated in HANA. It does not handle deleted data.


