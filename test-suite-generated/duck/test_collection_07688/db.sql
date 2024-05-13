create table tbl (a integer, b integer unique, c integer default 10);
insert into tbl(a,b) values (1,2), (2,1);
insert or replace into tbl(a,b,c) values (5,2,20), (10,1,30);
insert or replace into tbl (a,b) values (5,2);
insert or replace into tbl AS not_tbl (a,b) values (5,2);
create or replace table tbl (
	a integer primary key default 4,
	b integer DEFAULT 3
);
insert into tbl VALUES (2,3), (4,5);
insert into tbl VALUES (DEFAULT, 6) ON CONFLICT (a) DO UPDATE SET b = DEFAULT;
