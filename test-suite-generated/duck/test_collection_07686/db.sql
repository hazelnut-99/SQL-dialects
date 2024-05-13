create table tbl (a integer, b integer unique, c integer default 10);
insert into tbl(a,b) values (1,2), (2,1);
insert or replace into tbl(a,b,c) values (5,2,20), (10,1,30);
insert or replace into tbl (a,b) values (5,2);
insert or replace into tbl AS not_tbl (a,b) values (5,2);
