# IQ-Pull-From-HANA
Outline a mechanism that can be used to copy data from SAP HANA to SAP IQ or SAP HANA Cloud, data lake relational engine (IQ)

Step 1 -- create_remote_server.sql -- create the server in HDLRE/IQ that points to HANA
Step 2 -- create_HANA_table.sql -- from HDLRE/IQ, log in to HANA and create a table for testing
Step 3 -- create_IQ_table.sql -- in HDLRE/IQ, create a table to load and store the HANA data in HDLRE
Step 4 -- create_IQ_temp_table.sql -- create the proxy, or existing, table that points to the HANA object.  This script uses a temporary table construct so that the table is only around for the duration of the connection.
Step 5 -- create_procedure.sql -- 
