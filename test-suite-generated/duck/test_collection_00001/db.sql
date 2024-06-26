CREATE TABLE IF NOT EXISTS a(id INT PRIMARY KEY);
INSERT INTO a(id) VALUES (1);
ALTER TABLE a ADD COLUMN c REAL;
ALTER TABLE a ALTER COLUMN c SET DEFAULT 10;
ALTER TABLE a RENAME c TO d;
ALTER TABLE a RENAME TO b;
ALTER TABLE b DROP d;
INSERT INTO b(id) VALUES (2);
ALTER SEQUENCE IF EXISTS seq OWNED BY x;
ALTER TABLE IF EXISTS t0 ADD COLUMN c0 INT;
ALTER TABLE IF EXISTS t0 ADD COLUMN IF NOT EXISTS c0 int;
CREATE TABLE t0 (c0 INT);
ALTER TABLE t0 ADD COLUMN IF NOT EXISTS c0 int;
INSERT INTO t0 VALUES (42);
ALTER TABLE t0 ADD COLUMN c1 int;
INSERT INTO t0 VALUES (42, 43);
ALTER TABLE t0 ADD COLUMN IF NOT EXISTS c2 int;
INSERT INTO t0 VALUES (42, 43, 44);
ALTER TABLE IF EXISTS t1 DROP COLUMN IF EXISTS c3;
ALTER TABLE IF EXISTS t0 DROP COLUMN if EXISTS c3;
ALTER TABLE t0 DROP COLUMN IF EXISTS c3;
ALTER TABLE IF EXISTS t1 ALTER COLUMN c0 TYPE varchar;
CREATE TABLE unit (price INTEGER, amount_sold INTEGER);
ALTER TABLE unit DROP COLUMN IF EXISTS rowid;
