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
create or replace table tbl (
	a integer primary key DEFAULT 5,
	b integer
);
insert into tbl DEFAULT VALUES;
FROM tbl;
create or replace table tbl(
	i integer UNIQUE,
	j integer,
	k integer PRIMARY KEY
);
insert into tbl values (3,4,2), (5,3,1);
insert into tbl(k, i) values (2,3), (4,4), (1,8) on conflict (k) do update set j = excluded.j;
create or replace table tbl (
	a integer primary key,
	b integer
);
insert into tbl VALUES (1,2), (2,2);
insert into tbl VALUES (1,3), (3,4) ON CONFLICT (a) DO UPDATE SET b = excluded.b;
