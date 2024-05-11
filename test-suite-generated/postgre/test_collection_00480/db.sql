CREATE TABLE truncate_a (col1 integer primary key);
INSERT INTO truncate_a VALUES (1);
INSERT INTO truncate_a VALUES (2);
BEGIN;
TRUNCATE truncate_a;
ROLLBACK;
BEGIN;
COMMIT;
CREATE TABLE trunc_c (a serial PRIMARY KEY);
CREATE TABLE trunc_d (a int REFERENCES trunc_c);
TRUNCATE TABLE trunc_c,trunc_d;		-- fail
INSERT INTO trunc_c VALUES (1);
INSERT INTO trunc_d VALUES (1);
INSERT INTO trunc_d VALUES (1);
TRUNCATE TABLE trunc_c CASCADE;  -- ok
CREATE TABLE trunc_f (col1 integer primary key);
INSERT INTO trunc_f VALUES (1);
INSERT INTO trunc_f VALUES (2);
CREATE TABLE trunc_fa (col2a text) INHERITS (trunc_f);
INSERT INTO trunc_fa VALUES (3, 'three');
CREATE TABLE trunc_fb (col2b int) INHERITS (trunc_f);
INSERT INTO trunc_fb VALUES (4, 444);
CREATE TABLE trunc_faa (col3 text) INHERITS (trunc_fa);
INSERT INTO trunc_faa VALUES (5, 'five', 'FIVE');
BEGIN;
TRUNCATE trunc_f;
ROLLBACK;
BEGIN;
TRUNCATE ONLY trunc_f;
ROLLBACK;
BEGIN;
TRUNCATE ONLY trunc_fb, ONLY trunc_fa;
ROLLBACK;
BEGIN;
TRUNCATE ONLY trunc_fb, trunc_fa;
ROLLBACK;
DROP TABLE trunc_f CASCADE;
CREATE TABLE trunc_trigger_test (f1 int, f2 text, f3 text);
CREATE TABLE trunc_trigger_log (tgop text, tglevel text, tgwhen text,
        tgargv text, tgtable name, rowcount bigint);
CREATE FUNCTION trunctrigger() RETURNS trigger as $$
declare c bigint;
begin
    execute 'select count(*) from ' || quote_ident(tg_table_name) into c;
    insert into trunc_trigger_log values
      (TG_OP, TG_LEVEL, TG_WHEN, TG_ARGV[0], tg_table_name, c);
    return null;
end;
$$ LANGUAGE plpgsql;
INSERT INTO trunc_trigger_test VALUES(1, 'foo', 'bar'), (2, 'baz', 'quux');
CREATE TRIGGER t
BEFORE TRUNCATE ON trunc_trigger_test
FOR EACH STATEMENT
EXECUTE PROCEDURE trunctrigger('before trigger truncate');
TRUNCATE trunc_trigger_test;
DROP TRIGGER t ON trunc_trigger_test;
truncate trunc_trigger_log;
INSERT INTO trunc_trigger_test VALUES(1, 'foo', 'bar'), (2, 'baz', 'quux');
CREATE TRIGGER tt
AFTER TRUNCATE ON trunc_trigger_test
FOR EACH STATEMENT
EXECUTE PROCEDURE trunctrigger('after trigger truncate');
TRUNCATE trunc_trigger_test;
DROP TABLE trunc_trigger_test;
DROP TABLE trunc_trigger_log;
DROP FUNCTION trunctrigger();
CREATE SEQUENCE truncate_a_id1 START WITH 33;
CREATE TABLE truncate_a (id serial,
                         id1 integer default nextval('truncate_a_id1'));
ALTER SEQUENCE truncate_a_id1 OWNED BY truncate_a.id1;
INSERT INTO truncate_a DEFAULT VALUES;
INSERT INTO truncate_a DEFAULT VALUES;
TRUNCATE truncate_a;
INSERT INTO truncate_a DEFAULT VALUES;
INSERT INTO truncate_a DEFAULT VALUES;
TRUNCATE truncate_a RESTART IDENTITY;
INSERT INTO truncate_a DEFAULT VALUES;
INSERT INTO truncate_a DEFAULT VALUES;
CREATE TABLE truncate_b (id int GENERATED ALWAYS AS IDENTITY (START WITH 44));
INSERT INTO truncate_b DEFAULT VALUES;
INSERT INTO truncate_b DEFAULT VALUES;
TRUNCATE truncate_b;
INSERT INTO truncate_b DEFAULT VALUES;
INSERT INTO truncate_b DEFAULT VALUES;
TRUNCATE truncate_b RESTART IDENTITY;
INSERT INTO truncate_b DEFAULT VALUES;
INSERT INTO truncate_b DEFAULT VALUES;
BEGIN;
TRUNCATE truncate_a RESTART IDENTITY;
INSERT INTO truncate_a DEFAULT VALUES;
ROLLBACK;
INSERT INTO truncate_a DEFAULT VALUES;
INSERT INTO truncate_a DEFAULT VALUES;
