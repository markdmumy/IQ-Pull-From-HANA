forward to MY_HDB;
drop SEQUENCE mySequence ;
CREATE SEQUENCE mySequence START WITH 10 INCREMENT BY 1;
drop table HANA_TABLE;
create table HANA_TABLE ( A1 int, A2 nvarchar(25), A3 date );
insert into HANA_TABLE values ( 1, 'string 1', now() );
insert into HANA_TABLE values ( 2, 'string 2', now() );
insert into HANA_TABLE values ( 3, 'string 3', now() );
insert into HANA_TABLE values ( 4, 'string 4', now() );
insert into HANA_TABLE values ( 5, 'string 5', now() );
insert into HANA_TABLE select * from HANA_TABLE;
insert into HANA_TABLE select * from HANA_TABLE;
insert into HANA_TABLE select * from HANA_TABLE;
insert into HANA_TABLE select * from HANA_TABLE;
insert into HANA_TABLE select * from HANA_TABLE;
insert into HANA_TABLE select * from HANA_TABLE;
insert into HANA_TABLE select * from HANA_TABLE;
insert into HANA_TABLE select * from HANA_TABLE;
insert into HANA_TABLE select * from HANA_TABLE;
insert into HANA_TABLE select * from HANA_TABLE;
insert into HANA_TABLE select * from HANA_TABLE;
insert into HANA_TABLE select * from HANA_TABLE;
insert into HANA_TABLE select * from HANA_TABLE;
insert into HANA_TABLE select * from HANA_TABLE;
insert into HANA_TABLE select * from HANA_TABLE;
insert into HANA_TABLE select * from HANA_TABLE;
insert into HANA_TABLE select * from HANA_TABLE;
insert into HANA_TABLE select * from HANA_TABLE;
update HANA_TABLE set A1 = mySequence.NEXTVAL;
select count(*) from HANA_TABLE;
