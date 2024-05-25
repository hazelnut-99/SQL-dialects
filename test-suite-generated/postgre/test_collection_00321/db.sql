rollback;
create table trigtest (i serial primary key);
create table trigtest2 (i int references trigtest(i) on delete cascade);
create function trigtest() returns trigger as $$
begin
	raise notice '% % % %', TG_TABLE_NAME, TG_OP, TG_WHEN, TG_LEVEL;
	return new;
end;$$ language plpgsql;
create trigger trigtest_b_row_tg before insert or update or delete on trigtest
for each row execute procedure trigtest();
create trigger trigtest_a_row_tg after insert or update or delete on trigtest
for each row execute procedure trigtest();
create trigger trigtest_b_stmt_tg before insert or update or delete on trigtest
for each statement execute procedure trigtest();
create trigger trigtest_a_stmt_tg after insert or update or delete on trigtest
for each statement execute procedure trigtest();
insert into trigtest default values;
alter table trigtest disable trigger trigtest_b_row_tg;
insert into trigtest default values;
alter table trigtest disable trigger user;
insert into trigtest default values;
alter table trigtest enable trigger trigtest_a_stmt_tg;
insert into trigtest default values;
insert into trigtest default values;  -- does not trigger
alter table trigtest enable always trigger trigtest_a_stmt_tg;
insert into trigtest default values;  -- now it does
insert into trigtest2 values(1);
insert into trigtest2 values(2);
delete from trigtest where i=2;
alter table trigtest disable trigger all;
delete from trigtest where i=1;
insert into trigtest default values;
drop table trigtest2;
drop table trigtest;
CREATE TABLE trigger_test (
        i int,
        v varchar
);
CREATE OR REPLACE FUNCTION trigger_data()  RETURNS trigger
LANGUAGE plpgsql AS $$

declare

	argstr text;
	relid text;

begin

	relid := TG_relid::regclass;

	raise NOTICE 'TG_NAME: %', TG_name;
	raise NOTICE 'TG_WHEN: %', TG_when;
	raise NOTICE 'TG_LEVEL: %', TG_level;
	raise NOTICE 'TG_OP: %', TG_op;
	raise NOTICE 'TG_RELID::regclass: %', relid;
	raise NOTICE 'TG_RELNAME: %', TG_relname;
	raise NOTICE 'TG_TABLE_NAME: %', TG_table_name;
	raise NOTICE 'TG_TABLE_SCHEMA: %', TG_table_schema;
	raise NOTICE 'TG_NARGS: %', TG_nargs;

	argstr := '[';
	for i in 0 .. TG_nargs - 1 loop
		if i > 0 then
			argstr := argstr || ', ';
		end if;
		argstr := argstr || TG_argv[i];
	end loop;
	argstr := argstr || ']';
	raise NOTICE 'TG_ARGV: %', argstr;

	if TG_OP != 'INSERT' then
		raise NOTICE 'OLD: %', OLD;
	end if;

	if TG_OP != 'DELETE' then
		raise NOTICE 'NEW: %', NEW;
	end if;

	if TG_OP = 'DELETE' then
		return OLD;
	else
		return NEW;
	end if;

end;
$$;
CREATE TRIGGER show_trigger_data_trig
BEFORE INSERT OR UPDATE OR DELETE ON trigger_test
FOR EACH ROW EXECUTE PROCEDURE trigger_data(23,'skidoo');
insert into trigger_test values(1,'insert');
delete from trigger_test;
DROP TRIGGER show_trigger_data_trig on trigger_test;
DROP FUNCTION trigger_data();
DROP TABLE trigger_test;
CREATE TABLE trigger_test (f1 int, f2 text, f3 text);
CREATE FUNCTION mytrigger() RETURNS trigger LANGUAGE plpgsql as $$
begin
	if row(old.*) = row(new.*) then
		raise notice 'row % not changed', new.f1;
	else
		raise notice 'row % changed', new.f1;
	end if;
	return new;
end$$;
CREATE TRIGGER t
BEFORE UPDATE ON trigger_test
FOR EACH ROW EXECUTE PROCEDURE mytrigger();
INSERT INTO trigger_test VALUES(1, 'foo', 'bar');
INSERT INTO trigger_test VALUES(2, 'baz', 'quux');
CREATE OR REPLACE FUNCTION mytrigger() RETURNS trigger LANGUAGE plpgsql as $$
begin
	if row(old.*) is distinct from row(new.*) then
		raise notice 'row % changed', new.f1;
	else
		raise notice 'row % not changed', new.f1;
	end if;
	return new;
end$$;
DROP TABLE trigger_test;
DROP FUNCTION mytrigger();
CREATE FUNCTION serializable_update_trig() RETURNS trigger LANGUAGE plpgsql AS
$$
declare
	rec record;
begin
	new.description = 'updated in trigger';
	return new;
end;
$$;
CREATE TABLE serializable_update_tab (
	id int,
	filler  text,
	description text
);
CREATE TRIGGER serializable_update_trig BEFORE UPDATE ON serializable_update_tab
	FOR EACH ROW EXECUTE PROCEDURE serializable_update_trig();
INSERT INTO serializable_update_tab SELECT a, repeat('xyzxz', 100), 'new'
	FROM generate_series(1, 50) a;
BEGIN;
COMMIT;
