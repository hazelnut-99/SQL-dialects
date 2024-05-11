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
BEGIN;
INSERT INTO trans_foo VALUES (1);
SAVEPOINT one;
ROLLBACK TO one;
RELEASE SAVEPOINT one;
SAVEPOINT two;
INSERT into trans_barbaz VALUES (1);
RELEASE two;
SAVEPOINT three;
SAVEPOINT four;
INSERT INTO trans_foo VALUES (2);
RELEASE SAVEPOINT four;
ROLLBACK TO SAVEPOINT three;
RELEASE SAVEPOINT three;
INSERT INTO trans_foo VALUES (3);
COMMIT;
BEGIN;
SAVEPOINT one;
ROLLBACK TO SAVEPOINT one;
RELEASE SAVEPOINT one;
SAVEPOINT two;
CREATE TABLE savepoints (a int);
SAVEPOINT three;
INSERT INTO savepoints VALUES (1);
SAVEPOINT four;
INSERT INTO savepoints VALUES (2);
SAVEPOINT five;
INSERT INTO savepoints VALUES (3);
ROLLBACK TO SAVEPOINT five;
COMMIT;
COMMIT;		-- should not be in a transaction block
BEGIN;
SAVEPOINT one;
DELETE FROM savepoints WHERE a=1;
RELEASE SAVEPOINT one;
SAVEPOINT two;
DELETE FROM savepoints WHERE a=1;
SAVEPOINT three;
DELETE FROM savepoints WHERE a=2;
ROLLBACK;
COMMIT;		-- should not be in a transaction block
BEGIN;
INSERT INTO savepoints VALUES (4);
SAVEPOINT one;
INSERT INTO savepoints VALUES (5);
COMMIT;
BEGIN;
INSERT INTO savepoints VALUES (6);
SAVEPOINT one;
INSERT INTO savepoints VALUES (7);
RELEASE SAVEPOINT one;
INSERT INTO savepoints VALUES (8);
COMMIT;
