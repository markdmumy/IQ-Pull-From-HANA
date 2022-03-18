drop table if exists HANA_TABLE_PROXY;

create existing table HANA_TABLE_PROXY ( A1 int, A2 varchar(75), A3 date )
at 'MY_HDB...HANA_TABLE';

select count(*) from HANA_TABLE_PROXY;

select * into #xxxx from HANA_TABLE_PROXY;

drop table if exists HANA_TABLE_PROXY;
