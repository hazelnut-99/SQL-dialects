CREATE TABLE a(i INTEGER);
INSERT INTO a SELECT * FROM range(0, 1024, 1);
INSERT INTO a SELECT * FROM range(0, 1024, 1);
INSERT INTO a SELECT * FROM range(0, 1024, 1);
INSERT INTO a SELECT * FROM range(0, 1024, 1);
INSERT INTO a SELECT * FROM range(0, 1024, 1);
INSERT INTO a SELECT * FROM range(0, 1024, 1);
INSERT INTO a SELECT * FROM range(0, 1024, 1);
INSERT INTO a SELECT * FROM range(0, 1024, 1);
INSERT INTO a SELECT * FROM range(0, 1024, 1);
INSERT INTO a SELECT * FROM range(0, 1024, 1);
INSERT INTO a SELECT * FROM range(0, 1024, 1);
INSERT INTO a SELECT * FROM range(0, 1024, 1);
INSERT INTO a SELECT * FROM range(0, 1024, 1);
INSERT INTO a SELECT * FROM range(0, 1024, 1);
INSERT INTO a SELECT * FROM range(0, 1024, 1);
INSERT INTO a SELECT * FROM range(0, 1024, 1);
INSERT INTO a SELECT * FROM range(0, 1024, 1);
INSERT INTO a SELECT * FROM range(0, 1024, 1);
INSERT INTO a SELECT * FROM range(0, 1024, 1);
INSERT INTO a SELECT * FROM range(0, 1024, 1);
BEGIN TRANSACTION;
DELETE FROM a WHERE i=0;
ROLLBACK;
BEGIN TRANSACTION;
DELETE FROM a WHERE i=1;
ROLLBACK;
BEGIN TRANSACTION;
DELETE FROM a WHERE i=1022;
ROLLBACK;
BEGIN TRANSACTION;
DELETE FROM a WHERE i=1023;
ROLLBACK;
BEGIN TRANSACTION;
DELETE FROM a WHERE i=0;
COMMIT;
INSERT INTO a VALUES (1), (2), (3);
DELETE FROM a USING (values (1)) tbl(i) WHERE a.i=tbl.i;
DELETE FROM a USING (values (1)) tbl(i);
INSERT INTO a VALUES (1), (2), (3);
DELETE FROM a USING (values (1)) tbl(i), (values (1), (2)) tbl2(i) WHERE a.i=tbl.i AND a.i=tbl2.i;
DELETE FROM a USING (values (4)) tbl(i) WHERE a.i=tbl.i;
DELETE FROM a USING a a2(i) WHERE a.i>a2.i;
INSERT INTO a VALUES (42);
TRUNCATE TABLE a;
TRUNCATE a;
INSERT INTO a VALUES (42);
BEGIN TRANSACTION;
TRUNCATE a;
ROLLBACK;
DELETE FROM a WHERE i >= 2000 AND i < 5000;
DELETE FROM a WHERE i >= 2000 AND i < 5000;
create table integers as select * from generate_series(0, 9, 1);
create table integers2 as select * from generate_series(0, 9, 1);
DELETE FROM integers USING integers2;
DROP TABLE integers;
DROP TABLE integers2;
BEGIN transaction;
create table integers as select * from generate_series(0, 9, 1);
create table integers2 as select * from generate_series(0, 9, 1);
DELETE FROM integers USING integers2;
COMMIT;
CREATE TABLE aggr (k int[]);
INSERT INTO aggr VALUES ([0, 1, 1, 1, 4, 0, 3, 3, 2, 2, 4, 4, 2, 4, 0, 0, 0, 1, 2, 3, 4, 2, 3, 3, 1]);
INSERT INTO aggr VALUES ([]), ([NULL]), (NULL), ([0, 1, 1, 1, 4, NULL, 0, 3, 3, 2, NULL, 2, 4, 4, 2, 4, 0, 0, 0, 1, NULL, 2, 3, 4, 2, 3, 3, 1]);
