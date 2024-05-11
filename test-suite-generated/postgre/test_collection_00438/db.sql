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
BEGIN;
INSERT INTO savepoints VALUES (9);
SAVEPOINT one;
INSERT INTO savepoints VALUES (10);
ROLLBACK TO SAVEPOINT one;
INSERT INTO savepoints VALUES (11);
COMMIT;
BEGIN;
INSERT INTO savepoints VALUES (12);
SAVEPOINT one;
INSERT INTO savepoints VALUES (13);
SAVEPOINT two;
INSERT INTO savepoints VALUES (14);
ROLLBACK TO SAVEPOINT one;
INSERT INTO savepoints VALUES (15);
SAVEPOINT two;
INSERT INTO savepoints VALUES (16);
SAVEPOINT three;
INSERT INTO savepoints VALUES (17);
COMMIT;
BEGIN;
INSERT INTO savepoints VALUES (18);
SAVEPOINT one;
INSERT INTO savepoints VALUES (19);
SAVEPOINT two;
INSERT INTO savepoints VALUES (20);
ROLLBACK TO SAVEPOINT one;
INSERT INTO savepoints VALUES (21);
ROLLBACK TO SAVEPOINT one;
INSERT INTO savepoints VALUES (22);
COMMIT;
DROP TABLE savepoints;
BEGIN;
SAVEPOINT one;
ROLLBACK TO SAVEPOINT one;
COMMIT;
BEGIN;
COMMIT;
create or replace function max_xacttest() returns smallint language sql as
'select max(a) from xacttest' stable;
begin;
rollback;
create or replace function max_xacttest() returns smallint language sql as
'select max(a) from xacttest' volatile;
begin;
rollback;
create or replace function max_xacttest() returns smallint language plpgsql as
'begin return max(a) from xacttest; end' stable;
begin;
rollback;
create or replace function max_xacttest() returns smallint language plpgsql as
'begin return max(a) from xacttest; end' volatile;
begin;
rollback;
BEGIN;
savepoint x;
CREATE TABLE koju (a INT UNIQUE);
INSERT INTO koju VALUES (1);
rollback to x;
CREATE TABLE koju (a INT UNIQUE);
INSERT INTO koju VALUES (1);
ROLLBACK;
DROP TABLE trans_foo;
DROP TABLE trans_baz;
DROP TABLE trans_barbaz;
create function inverse(int) returns float8 as
$$
begin
  analyze revalidate_bug;
  return 1::float8/$1;
exception
  when division_by_zero then return 0;
end$$ language plpgsql volatile;
create table revalidate_bug (c float8 unique);
insert into revalidate_bug values (1);
insert into revalidate_bug values (inverse(0));
drop table revalidate_bug;
drop function inverse(int);
begin;
savepoint x;
create table trans_abc (a int);
insert into trans_abc values (5);
insert into trans_abc values (10);
declare foo cursor for select * from trans_abc;
fetch from foo;
rollback to x;
commit;
begin;
create table trans_abc (a int);
insert into trans_abc values (5);
insert into trans_abc values (10);
insert into trans_abc values (15);
declare foo cursor for select * from trans_abc;
fetch from foo;
savepoint x;
fetch from foo;
rollback to x;
fetch from foo;
abort;
CREATE FUNCTION invert(x float8) RETURNS float8 LANGUAGE plpgsql AS
$$ begin return 1/x; end $$;
CREATE FUNCTION create_temp_tab() RETURNS text
LANGUAGE plpgsql AS $$
BEGIN
  CREATE TEMP TABLE new_table (f1 float8);
  INSERT INTO new_table SELECT invert(0.0);
  RETURN 'foo';
END $$;
BEGIN;
COMMIT;
DROP FUNCTION create_temp_tab();
DROP FUNCTION invert(x float8);
CREATE TABLE trans_abc (a int);
START TRANSACTION ISOLATION LEVEL REPEATABLE READ, READ WRITE, DEFERRABLE;
SHOW transaction_isolation;
SHOW transaction_read_only;
SHOW transaction_deferrable;
INSERT INTO trans_abc VALUES (1);
INSERT INTO trans_abc VALUES (2);
COMMIT AND CHAIN;  -- TBLOCK_END
SHOW transaction_isolation;
SHOW transaction_read_only;
SHOW transaction_deferrable;
COMMIT AND CHAIN;  -- TBLOCK_ABORT_END
SHOW transaction_isolation;
SHOW transaction_read_only;
SHOW transaction_deferrable;
INSERT INTO trans_abc VALUES (4);
COMMIT;
START TRANSACTION ISOLATION LEVEL REPEATABLE READ, READ WRITE, DEFERRABLE;
SHOW transaction_isolation;
SHOW transaction_read_only;
SHOW transaction_deferrable;
SAVEPOINT x;
COMMIT AND CHAIN;  -- TBLOCK_ABORT_PENDING
SHOW transaction_isolation;
SHOW transaction_read_only;
SHOW transaction_deferrable;
INSERT INTO trans_abc VALUES (5);
COMMIT;
START TRANSACTION ISOLATION LEVEL REPEATABLE READ, READ WRITE, DEFERRABLE;
SHOW transaction_isolation;
SHOW transaction_read_only;
SHOW transaction_deferrable;
SAVEPOINT x;
COMMIT AND CHAIN;  -- TBLOCK_SUBCOMMIT
SHOW transaction_isolation;
SHOW transaction_read_only;
SHOW transaction_deferrable;
COMMIT;
START TRANSACTION ISOLATION LEVEL READ COMMITTED, READ WRITE, DEFERRABLE;
SHOW transaction_isolation;
SHOW transaction_read_only;
SHOW transaction_deferrable;
SAVEPOINT x;
COMMIT AND CHAIN;  -- TBLOCK_SUBCOMMIT
SHOW transaction_isolation;
SHOW transaction_read_only;
SHOW transaction_deferrable;
COMMIT;
START TRANSACTION ISOLATION LEVEL SERIALIZABLE, READ WRITE, NOT DEFERRABLE;
SHOW transaction_isolation;
SHOW transaction_read_only;
SHOW transaction_deferrable;
INSERT INTO trans_abc VALUES (6);
ROLLBACK AND CHAIN;  -- TBLOCK_ABORT_PENDING
SHOW transaction_isolation;
SHOW transaction_read_only;
SHOW transaction_deferrable;
ROLLBACK AND CHAIN;  -- TBLOCK_ABORT_END
SHOW transaction_isolation;
SHOW transaction_read_only;
SHOW transaction_deferrable;
ROLLBACK;
DROP TABLE trans_abc;
create temp table i_table (f1 int);
