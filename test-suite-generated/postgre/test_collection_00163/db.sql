DROP TABLE IF EXISTS target;
DROP TABLE IF EXISTS source;
CREATE TABLE target (tid integer, balance integer)
  WITH (autovacuum_enabled=off);
CREATE TABLE source (sid integer, delta integer) -- no index
  WITH (autovacuum_enabled=off);
INSERT INTO target VALUES (1, 10);
INSERT INTO target VALUES (2, 20);
INSERT INTO target VALUES (3, 30);
ROLLBACK;
BEGIN;
ROLLBACK;
BEGIN;
ROLLBACK;
BEGIN;
ROLLBACK;
BEGIN;
ROLLBACK;
BEGIN;
ROLLBACK;
BEGIN;
ROLLBACK;
BEGIN;
ROLLBACK;
BEGIN;
ROLLBACK;
BEGIN;
ROLLBACK;
BEGIN;
ROLLBACK;
BEGIN;
ROLLBACK;
BEGIN;
ROLLBACK;
BEGIN;
ROLLBACK;
BEGIN;
ROLLBACK;
BEGIN;
ROLLBACK;
BEGIN;
ROLLBACK;
BEGIN;
ROLLBACK;
BEGIN;
ROLLBACK;
CREATE TABLE wq_target (tid integer not null, balance integer DEFAULT -1)
  WITH (autovacuum_enabled=off);
CREATE TABLE wq_source (balance integer, sid integer)
  WITH (autovacuum_enabled=off);
INSERT INTO wq_source (sid, balance) VALUES (1, 100);
BEGIN;
ROLLBACK;
BEGIN;
ROLLBACK;
BEGIN;
ROLLBACK;
BEGIN;
ROLLBACK;
DROP TABLE wq_target, wq_source;
create or replace function merge_trigfunc () returns trigger
language plpgsql as
$$
DECLARE
	line text;
BEGIN
	SELECT INTO line format('%s %s %s trigger%s',
		TG_WHEN, TG_OP, TG_LEVEL, CASE
		WHEN TG_OP = 'INSERT' AND TG_LEVEL = 'ROW'
			THEN format(' row: %s', NEW)
		WHEN TG_OP = 'UPDATE' AND TG_LEVEL = 'ROW'
			THEN format(' row: %s -> %s', OLD, NEW)
		WHEN TG_OP = 'DELETE' AND TG_LEVEL = 'ROW'
			THEN format(' row: %s', OLD)
		END);

	RAISE NOTICE '%', line;
	IF (TG_WHEN = 'BEFORE' AND TG_LEVEL = 'ROW') THEN
		IF (TG_OP = 'DELETE') THEN
			RETURN OLD;
		ELSE
			RETURN NEW;
		END IF;
	ELSE
		RETURN NULL;
	END IF;
END;
$$;
BEGIN;
ROLLBACK;
BEGIN;
ROLLBACK;
create or replace function skip_merge_op() returns trigger
language plpgsql as
$$
BEGIN
	RETURN NULL;
END;
$$;
DROP FUNCTION skip_merge_op();
BEGIN;
ROLLBACK;
BEGIN;
ROLLBACK;
BEGIN;
ROLLBACK;
BEGIN;
ROLLBACK;
BEGIN;
ROLLBACK;
BEGIN;
ROLLBACK;
BEGIN;
ROLLBACK;
BEGIN;
ROLLBACK;
BEGIN;
ROLLBACK;
BEGIN;
ROLLBACK;
CREATE TABLE sq_target (tid integer NOT NULL, balance integer)
  WITH (autovacuum_enabled=off);
CREATE TABLE sq_source (delta integer, sid integer, balance integer DEFAULT 0)
  WITH (autovacuum_enabled=off);
INSERT INTO sq_target(tid, balance) VALUES (1,100), (2,200), (3,300);
INSERT INTO sq_source(sid, delta) VALUES (1,10), (2,20), (4,40);
BEGIN;
ROLLBACK;
CREATE VIEW v AS SELECT * FROM sq_source WHERE sid < 2;
BEGIN;
ROLLBACK;
BEGIN;
ROLLBACK;
BEGIN;
INSERT INTO sq_source (sid, balance, delta) VALUES (-1, -1, -10);
ROLLBACK;
BEGIN;
INSERT INTO sq_source (sid, balance, delta) VALUES (-1, -1, -10);
ROLLBACK;
