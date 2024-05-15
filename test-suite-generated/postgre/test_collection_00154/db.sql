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
BEGIN;
CREATE TABLE merge_actions(action text, abbrev text);
INSERT INTO merge_actions VALUES ('INSERT', 'ins'), ('UPDATE', 'upd'), ('DELETE', 'del');
ROLLBACK;
CREATE TABLE sq_target_merge_log (tid integer NOT NULL, last_change text);
INSERT INTO sq_target_merge_log VALUES (1, 'Original value');
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
CREATE TABLE ex_msource (a int, b int)
  WITH (autovacuum_enabled=off);
INSERT INTO ex_msource SELECT i, i*10 FROM generate_series(1,100,1) i;
CREATE TABLE tgt (a int, b int, c int, d int);
CREATE TABLE ref (ab int, cd int);
BEGIN;
ROLLBACK;
BEGIN;
ROLLBACK;
BEGIN;
ROLLBACK;
DROP TABLE sq_target, sq_target_merge_log, sq_source CASCADE;
CREATE TABLE pa_target (tid integer, balance float, val text)
	PARTITION BY LIST (tid);
CREATE TABLE part1 PARTITION OF pa_target FOR VALUES IN (1,4)
  WITH (autovacuum_enabled=off);
CREATE TABLE part2 PARTITION OF pa_target FOR VALUES IN (2,5,6)
  WITH (autovacuum_enabled=off);
CREATE TABLE part3 PARTITION OF pa_target FOR VALUES IN (3,8,9)
  WITH (autovacuum_enabled=off);
CREATE TABLE part4 PARTITION OF pa_target DEFAULT
  WITH (autovacuum_enabled=off);
CREATE TABLE pa_source (sid integer, delta float);
INSERT INTO pa_source SELECT id, id * 10  FROM generate_series(1,14) AS id;
INSERT INTO pa_target SELECT id, id * 100, 'initial' FROM generate_series(1,15,2) AS id;
BEGIN;
ROLLBACK;
BEGIN;
ROLLBACK;
BEGIN;
ROLLBACK;
BEGIN;
ROLLBACK;
DROP TABLE pa_target CASCADE;
CREATE TABLE pa_target (tid integer, balance float, val text)
	PARTITION BY LIST (tid);
CREATE TABLE part1 (tid integer, balance float, val text)
  WITH (autovacuum_enabled=off);
CREATE TABLE part2 (balance float, tid integer, val text)
  WITH (autovacuum_enabled=off);
CREATE TABLE part3 (tid integer, balance float, val text)
  WITH (autovacuum_enabled=off);
CREATE TABLE part4 (extraid text, tid integer, balance float, val text)
  WITH (autovacuum_enabled=off);
ALTER TABLE part4 DROP COLUMN extraid;
ALTER TABLE pa_target ATTACH PARTITION part1 FOR VALUES IN (1,4);
ALTER TABLE pa_target ATTACH PARTITION part2 FOR VALUES IN (2,5,6);
ALTER TABLE pa_target ATTACH PARTITION part3 FOR VALUES IN (3,8,9);
ALTER TABLE pa_target ATTACH PARTITION part4 DEFAULT;
INSERT INTO pa_target SELECT id, id * 100, 'initial' FROM generate_series(1,15,2) AS id;
BEGIN;
ROLLBACK;
BEGIN;
ROLLBACK;
BEGIN;
