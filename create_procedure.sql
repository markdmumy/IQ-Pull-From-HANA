drop procedure if exists sp_move_data;
create procedure sp_move_data()
begin
	declare rc unsigned bigint;

	drop table if exists HANA_TABLE_PROXY;

	create existing local temporary table HANA_TABLE_PROXY ( A1 int, A2 varchar(75), A3 date )
	at 'MY_HDB...HANA_TABLE';

	-- no WHERE clause so ALL hana data is moving
	-- might not be what you want to do
	select * into #HANA_TABLE_STAGING from HANA_TABLE_PROXY;

	select count(*) into rc from #HANA_TABLE_STAGING;
	message 'stage count: '||rc to client;
	select count(*) into rc from IQ_TABLE;
	message 'IQ count: '||rc to client;
	select count(*) into rc from HANA_TABLE_PROXY;
	message 'proxy count: '||rc to client;

	delete IQ_TABLE iqt from #HANA_TABLE_STAGING ht where iqt.A1 = ht.A1;

	select count(*) into rc from IQ_TABLE;
	message 'IQ count: '||rc to client;

	insert into IQ_TABLE select * from #HANA_TABLE_STAGING;

	select count(*) into rc from IQ_TABLE;
	message 'IQ: '||rc to client;
end;
