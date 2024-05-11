BEGIN;
CREATE TABLE xacttest (a smallint, b real);
INSERT INTO xacttest VALUES
  (56, 7.8),
  (100, 99.097),
  (0, 0.09561),
  (42, 324.78);
INSERT INTO xacttest (a, b) VALUES (777, 777.777);
END;
BEGIN;
CREATE TABLE disappear (a int4);
DELETE FROM xacttest;
ABORT;
END;
BEGIN TRANSACTION READ ONLY;
END;
BEGIN TRANSACTION DEFERRABLE;
END;
CREATE TABLE writetest (a int);
CREATE TEMPORARY TABLE temptest (a int);
BEGIN;
COMMIT;
BEGIN;
SAVEPOINT x;
COMMIT;
BEGIN;
SAVEPOINT x;
COMMIT;
BEGIN;
SAVEPOINT x;
ROLLBACK TO SAVEPOINT x;
SHOW transaction_read_only;  -- off
SAVEPOINT y;
RELEASE SAVEPOINT y;
SHOW transaction_read_only;  -- off
COMMIT;
DROP TABLE writetest; -- fail
DELETE FROM temptest; -- ok
START TRANSACTION READ WRITE;
COMMIT;
CREATE TABLE trans_foobar (a int);
BEGIN;
CREATE TABLE trans_foo (a int);
SAVEPOINT one;
DROP TABLE trans_foo;
CREATE TABLE trans_bar (a int);
ROLLBACK TO SAVEPOINT one;
RELEASE SAVEPOINT one;
SAVEPOINT two;
CREATE TABLE trans_baz (a int);
RELEASE SAVEPOINT two;
drop TABLE trans_foobar;
CREATE TABLE trans_barbaz (a int);
COMMIT;
