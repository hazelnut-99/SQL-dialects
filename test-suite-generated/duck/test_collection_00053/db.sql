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
