CREATE TABLE test (a INTEGER);
INSERT INTO test VALUES (1), (2), (3);
BEGIN TRANSACTION;
UPDATE test SET a=a+1;
UPDATE test SET a=a+1;
COMMIT;
BEGIN TRANSACTION;
UPDATE test SET a=9 WHERE a=5;
UPDATE test SET a=a+1;
UPDATE test SET a=7 WHERE a=3;
UPDATE test SET a=a+1;
UPDATE test SET a=8 WHERE a=4;
UPDATE test SET a=a+1;
COMMIT;
INSERT INTO test VALUES (1), (2), (3);
BEGIN TRANSACTION;
UPDATE test SET a=NULL WHERE a=1;
COMMIT;
BEGIN TRANSACTION;
UPDATE test SET a=4;
ROLLBACK;
BEGIN TRANSACTION;
UPDATE test SET a=CASE WHEN a IS NULL THEN 1 ELSE NULL END;
UPDATE test SET a=NULL;
COMMIT;
create table test_table (isin VARCHAR(20), value VARCHAR(1));
CREATE TABLE student(id INTEGER, name VARCHAR, PRIMARY KEY(id));
INSERT INTO student SELECT i, 'creator' FROM RANGE(260001) tbl(i);
UPDATE student SET name = 'updator0' WHERE id = 122879;
UPDATE student SET name = 'updator1' WHERE id = 122881;
UPDATE student SET name = 'updator2' WHERE id = 245780;
UPDATE student SET name = 'updator3' WHERE id = 150881;
update student set name = 'updator' where id = 122881;
INSERT INTO test SELECT a||a||a||a||a||a||a||a||a||a FROM test;
INSERT INTO test SELECT a||a||a||a||a||a||a||a||a||a FROM test;
INSERT INTO test SELECT a||a||a||a||a||a||a||a||a||a FROM test;
INSERT INTO test SELECT a||a||a||a||a||a||a||a||a||a FROM test;
INSERT INTO test SELECT a||a||a||a||a||a||a||a||a||a FROM test;
BEGIN TRANSACTION;
COMMIT;
CREATE TABLE a (b int);
BEGIN;
INSERT INTO a VALUES (1);
UPDATE a SET b = b + 10;
COMMIT;
UPDATE a SET b = b + 10;
BEGIN TRANSACTION;
COMMIT;
CREATE TABLE t(i int, j int);
INSERT INTO t SELECT ii, NULL FROM range(1024) tbl(ii);
CHECKPOINT;
UPDATE t SET j = 1;
CREATE TABLE t1 (c0 INT);
INSERT INTO t1(c0) VALUES (1),(2),(3);
UPDATE t1 SET c0 = DEFAULT;
INSERT INTO test SELECT * FROM test;
BEGIN TRANSACTION;
COMMIT;
begin transaction;
commit;
CREATE TABLE tbl (key INT, fruit VARCHAR, cost INT);
INSERT INTO tbl VALUES (1, 'apple', 2), (2, 'orange', 3);
UPDATE tbl SET (key, fruit, cost) = (1, 'pear', 2);
UPDATE tbl SET (key, fruit, cost) = (2, 'apple', 3);
UPDATE tbl SET (key, fruit, cost) = 3;
UPDATE tbl SET (key, fruit, cost) = ADD(key, cost);
CREATE TABLE t2 AS SELECT * FROM generate_series(0, 4999, 1) tbl(i);
UPDATE t2 SET i=33 FROM t1 WHERE t2.i<33;
BEGIN TRANSACTION;
INSERT INTO test SELECT * FROM test;
INSERT INTO test SELECT * FROM test;
INSERT INTO test SELECT * FROM test;
INSERT INTO test SELECT * FROM test;
INSERT INTO test SELECT * FROM test;
INSERT INTO test SELECT * FROM test;
INSERT INTO test SELECT * FROM test;
COMMIT;
BEGIN TRANSACTION;
COMMIT;
BEGIN TRANSACTION;
ROLLBACK;
BEGIN TRANSACTION;
ROLLBACK;
BEGIN TRANSACTION;
ROLLBACK;
INSERT INTO test VALUES (1), (2), (3);
BEGIN TRANSACTION;
COMMIT;
DROP TABLE test;
CREATE TABLE test (a INTEGER);
INSERT INTO test VALUES (1), (2), (3), (NULL);
BEGIN TRANSACTION;
UPDATE test SET a=NULL WHERE a=2;
COMMIT;
BEGIN TRANSACTION;
UPDATE test SET a=NULL WHERE a=3;
ROLLBACK;
BEGIN TRANSACTION;
UPDATE test SET a=10 WHERE a IS NULL;
ROLLBACK;
BEGIN TRANSACTION;
UPDATE test SET a=10 WHERE a IS NULL;
COMMIT;
BEGIN TRANSACTION;
COMMIT;
INSERT INTO test VALUES (1), (2), (3);
BEGIN TRANSACTION;
UPDATE test SET a=4 WHERE a=1;
ROLLBACK;
BEGIN TRANSACTION;
UPDATE test SET a=4 WHERE a=1;
COMMIT;
INSERT INTO test VALUES (1), (2), (3);
BEGIN TRANSACTION;
INSERT INTO test VALUES (4), (5), (6);
DELETE FROM test WHERE a < 4;
UPDATE test SET a=a-3;
COMMIT;
UPDATE test SET a=NULL;
BEGIN TRANSACTION;
COMMIT;
BEGIN;
FROM t1;
FROM t1;
ROLLBACK;
BEGIN TRANSACTION;
ROLLBACK;
INSERT INTO test SELECT * FROM test;
INSERT INTO test SELECT * FROM test;
INSERT INTO test SELECT * FROM test;
INSERT INTO test SELECT * FROM test;
INSERT INTO test SELECT * FROM test;
INSERT INTO test SELECT * FROM test;
INSERT INTO test SELECT * FROM test;
INSERT INTO test SELECT * FROM test;
BEGIN TRANSACTION;
ROLLBACK;
begin transaction;
create table integers as select * from generate_series(0, 10000000, 1) tbl(i);
update integers set i=i+1;
update integers set i=i+1;
update integers set i=i+1;
update integers set i=i+1;
update integers set i=i+1;
update integers set i=i+1;
