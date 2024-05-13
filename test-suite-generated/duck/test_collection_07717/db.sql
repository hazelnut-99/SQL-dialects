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
insert into tbl VALUES (4,3), (3,8) ON CONFLICT (a) WHERE excluded.b >= 8 DO UPDATE SET b = 10;
insert into tbl VALUES (3,8), (2,2), (7,2) ON CONFLICT (a) DO UPDATE SET b = b*2 WHERE b == excluded.b;
create or replace table tbl(
	i integer PRIMARY KEY,
	j integer UNIQUE,
	k integer
);
insert into tbl VALUES
	(1, 10, 1),
	(2, 20, 1),
	(3, 30, 2);
insert into tbl VALUES (3,5,1) ON CONFLICT (i) DO UPDATE SET k = k + excluded.k;
insert into tbl VALUES (3,5,1) ON CONFLICT (i) DO UPDATE SET k = excluded.k;
insert into tbl VALUES (4,2,3), (3,5,10) ON CONFLICT (i) DO NOTHING;
insert into tbl VALUES
	(3,1,5),
ON CONFLICT (i) DO UPDATE SET
	k = excluded.k;
insert into tbl VALUES (3,5,1) ON CONFLICT (i) WHERE k >= 5 DO UPDATE SET k = 1;
insert into tbl VALUES (3,5,3) on conflict (i) do update set k = 10 WHERE k != 1;
insert into tbl VALUES (3,5,3) on conflict (i) do update set k = 10 WHERE k == 1;
insert into tbl VALUES (5,1,0), (3,5,20) ON CONFLICT DO NOTHING;
create or replace table single_constraint (
	i integer PRIMARY KEY,
	j integer,
	k varchar,
);
insert into single_constraint values (5,1,'hello'), (1,10,'test');
insert into single_constraint values (1,5,'bye'), (3,10,'quack') on conflict do update set j = excluded.j, k = concat(k, excluded.k);
create or replace table tbl(
	i integer PRIMARY KEY,
	j integer UNIQUE,
	k integer
);
insert into tbl VALUES (1, 10, 1), (2, 20, 1), (3, 30, 2);
insert into tbl VALUES (3,5,1) ON CONFLICT (i) DO UPDATE SET k = k + excluded.k;
create or replace table tbl (
	a integer,
	b integer,
	c integer,
	primary key (a, b)
);
insert into tbl VALUES (1,2,3), (1,4,5);
insert into tbl VALUES (1,4,7), (1,8,4) ON CONFLICT (a,b) DO UPDATE set c = 5;
create or replace table tbl (
	a integer unique,
	b integer
);
insert into tbl VALUES (3,2), (1,3);
insert into tbl(b) VALUES (5) ON CONFLICT (a) DO UPDATE SET b = 8;
insert into tbl(b) VALUES (5) ON CONFLICT (a) DO UPDATE SET b = 8;
BEGIN TRANSACTION;
INSERT INTO tbl VALUES (1, 2) ON CONFLICT (a) DO UPDATE SET b = excluded.b;
INSERT INTO tbl VALUES (1, 3) ON CONFLICT (a) DO UPDATE SET b = excluded.b;
COMMIT;
BEGIN TRANSACTION;
COMMIT;
BEGIN TRANSACTION;
INSERT INTO tbl VALUES
	(5, 0);
COMMIT;
BEGIN TRANSACTION;
INSERT INTO tbl VALUES (6,0);
INSERT INTO tbl VALUES (5,0), (6,0), (7,0) ON CONFLICT (a) DO UPDATE set b = excluded.b;
INSERT INTO tbl VALUES (-1, 0), (5,0), (6,0) ON CONFLICT (a) DO NOTHING;
COMMIT;
BEGIN TRANSACTION;
CREATE OR REPLACE TABLE tbl (a SHORT PRIMARY KEY, b SHORT);
INSERT INTO tbl (select i, 0 from range(2500) tbl(i));
INSERT INTO tbl (select i, i from range(2500) tbl(i)) ON CONFLICT (a) DO UPDATE SET b = excluded.b;
COMMIT;
CREATE TABLE integers(
	i INTEGER unique,
	j INTEGER DEFAULT 0,
	k INTEGER DEFAULT 0
);
INSERT INTO integers(i) SELECT i from range(5000) tbl(i);
INSERT INTO integers SELECT * FROM integers on conflict do nothing;
INSERT INTO integers SELECT * FROM integers on conflict do update set j = 10;
INSERT INTO integers(i,j) select i%5,i from range(4995, 5000) tbl(i) on conflict do update set j = excluded.j, k = excluded.i;
insert into integers(i,j)
	select
		CASE WHEN i % 2 = 0
			THEN
				4999 - (i//2)
			ELSE
				i - ((i//2)+1)
		END,
		i
	from range(5000) tbl(i)
on conflict do update set j = excluded.j;
