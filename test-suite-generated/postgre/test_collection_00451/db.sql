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
DROP TABLE serializable_update_tab;
CREATE TABLE min_updates_test (
	f1	text,
	f2 int,
	f3 int);
INSERT INTO min_updates_test VALUES ('a',1,2),('b','2',null);
CREATE TRIGGER z_min_update
BEFORE UPDATE ON min_updates_test
FOR EACH ROW EXECUTE PROCEDURE suppress_redundant_updates_trigger();
DROP TABLE min_updates_test;
CREATE TABLE country_table (
    country_id        serial primary key,
    country_name    text unique not null,
    continent        text not null
);
INSERT INTO country_table (country_name, continent)
    VALUES ('Japan', 'Asia'),
           ('UK', 'Europe'),
           ('USA', 'North America')
    RETURNING *;
CREATE TABLE city_table (
    city_id        serial primary key,
    city_name    text not null,
    population    bigint,
    country_id    int references country_table
);
CREATE VIEW city_view AS
    SELECT city_id, city_name, population, country_name, continent
    FROM city_table ci
    LEFT JOIN country_table co ON co.country_id = ci.country_id;
CREATE FUNCTION city_insert() RETURNS trigger LANGUAGE plpgsql AS $$
declare
    ctry_id int;
begin
    if NEW.country_name IS NOT NULL then
        SELECT country_id, continent INTO ctry_id, NEW.continent
            FROM country_table WHERE country_name = NEW.country_name;
        if NOT FOUND then
            raise exception 'No such country: "%"', NEW.country_name;
        end if;
    else
        NEW.continent := NULL;
    end if;

    if NEW.city_id IS NOT NULL then
        INSERT INTO city_table
            VALUES(NEW.city_id, NEW.city_name, NEW.population, ctry_id);
    else
        INSERT INTO city_table(city_name, population, country_id)
            VALUES(NEW.city_name, NEW.population, ctry_id)
            RETURNING city_id INTO NEW.city_id;
    end if;

    RETURN NEW;
end;
$$;
CREATE TRIGGER city_insert_trig INSTEAD OF INSERT ON city_view
FOR EACH ROW EXECUTE PROCEDURE city_insert();
CREATE FUNCTION city_delete() RETURNS trigger LANGUAGE plpgsql AS $$
begin
    DELETE FROM city_table WHERE city_id = OLD.city_id;
    if NOT FOUND then RETURN NULL; end if;
    RETURN OLD;
end;
$$;
CREATE TRIGGER city_delete_trig INSTEAD OF DELETE ON city_view
FOR EACH ROW EXECUTE PROCEDURE city_delete();
INSERT INTO city_view(city_name, population) VALUES('London', 7556900) RETURNING *;
INSERT INTO city_view(city_name, country_name) VALUES('Washington DC', 'USA') RETURNING *;
INSERT INTO city_view(city_id, city_name) VALUES(123456, 'New York') RETURNING *;
INSERT INTO city_view VALUES(234567, 'Birmingham', 1016800, 'UK', 'EU') RETURNING *;
DELETE FROM city_view WHERE city_name = 'Birmingham' RETURNING *;
CREATE FUNCTION no_op_trig_fn() RETURNS trigger LANGUAGE plpgsql
AS 'begin RETURN NULL; end';
DROP TABLE city_table CASCADE;
DROP TABLE country_table;
create table depth_b (id int not null primary key);
create table depth_c (id int not null primary key);
create temp table parent (
    aid int not null primary key,
    val1 text,
    val2 text,
    val3 text,
    val4 text,
    bcnt int not null default 0);
create temp table child (
    bid int not null primary key,
    aid int not null,
    val1 text);
create function parent_upd_func()
  returns trigger language plpgsql as
$$
begin
  if old.val1 <> new.val1 then
    new.val2 = new.val1;
    delete from child where child.aid = new.aid and child.val1 = new.val1;
  end if;
  return new;
end;
$$;
create trigger parent_upd_trig before update on parent
  for each row execute procedure parent_upd_func();
create function parent_del_func()
  returns trigger language plpgsql as
$$
begin
  delete from child where aid = old.aid;
  return old;
end;
$$;
create trigger parent_del_trig before delete on parent
  for each row execute procedure parent_del_func();
insert into parent values (1, 'a', 'a', 'a', 'a', 0);
insert into child values (10, 1, 'b');
delete from parent where aid = 1; -- should fail
create or replace function parent_del_func()
  returns trigger language plpgsql as
$$
begin
  delete from child where aid = old.aid;
  if found then
    delete from parent where aid = old.aid;
    return null; -- cancel outer deletion
  end if;
  return old;
end;
$$;
delete from parent where aid = 1;
drop table parent, child;
drop function parent_upd_func();
drop function parent_del_func();
create temp table self_ref_trigger (
    id int primary key,
    parent int references self_ref_trigger,
    data text,
    nchildren int not null default 0
);
insert into self_ref_trigger values (1, null, 'root');
insert into self_ref_trigger values (2, 1, 'root child A');
insert into self_ref_trigger values (3, 1, 'root child B');
insert into self_ref_trigger values (4, 2, 'grandchild 1');
insert into self_ref_trigger values (5, 3, 'grandchild 2');
delete from self_ref_trigger;
drop table self_ref_trigger;
create table stmt_trig_on_empty_upd (a int);
create table stmt_trig_on_empty_upd1 () inherits (stmt_trig_on_empty_upd);
create function update_stmt_notice() returns trigger as $$
begin
	raise notice 'updating %', TG_TABLE_NAME;
	return null;
end;
$$ language plpgsql;
create trigger before_stmt_trigger
	before update on stmt_trig_on_empty_upd
	execute procedure update_stmt_notice();
create trigger before_stmt_trigger
	before update on stmt_trig_on_empty_upd1
	execute procedure update_stmt_notice();
drop table stmt_trig_on_empty_upd cascade;
drop function update_stmt_notice();
create table trigger_ddl_table (
   col1 integer,
   col2 integer
);
create function trigger_ddl_func() returns trigger as $$
begin
  alter table trigger_ddl_table add primary key (col1);
  return new;
end$$ language plpgsql;
create trigger trigger_ddl_func before insert on trigger_ddl_table for each row
  execute procedure trigger_ddl_func();
create or replace function trigger_ddl_func() returns trigger as $$
begin
  create index on trigger_ddl_table (col2);
  return new;
end$$ language plpgsql;
drop table trigger_ddl_table;
drop function trigger_ddl_func();
create table upsert (key int4 primary key, color text);
create function upsert_before_func()
  returns trigger language plpgsql as
$$
begin
  if (TG_OP = 'UPDATE') then
    raise warning 'before update (old): %', old.*::text;
    raise warning 'before update (new): %', new.*::text;
  elsif (TG_OP = 'INSERT') then
    raise warning 'before insert (new): %', new.*::text;
    if new.key % 2 = 0 then
      new.key := new.key + 1;
      new.color := new.color || ' trig modified';
      raise warning 'before insert (new, modified): %', new.*::text;
    end if;
  end if;
  return new;
end;
$$;
create trigger upsert_before_trig before insert or update on upsert
  for each row execute procedure upsert_before_func();
create function upsert_after_func()
  returns trigger language plpgsql as
$$
begin
  if (TG_OP = 'UPDATE') then
    raise warning 'after update (old): %', old.*::text;
    raise warning 'after update (new): %', new.*::text;
  elsif (TG_OP = 'INSERT') then
    raise warning 'after insert (new): %', new.*::text;
  end if;
  return null;
end;
$$;
create trigger upsert_after_trig after insert or update on upsert
  for each row execute procedure upsert_after_func();
