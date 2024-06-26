create table Room (
    roomno	char(8),
    comment	text
);
create unique index Room_rno on Room using btree (roomno bpchar_ops);
create table WSlot (
    slotname	char(20),
    roomno	char(8),
    slotlink	char(20),
    backlink	char(20)
);
create unique index WSlot_name on WSlot using btree (slotname bpchar_ops);
create table PField (
    name	text,
    comment	text
);
create unique index PField_name on PField using btree (name text_ops);
create table PSlot (
    slotname	char(20),
    pfname	text,
    slotlink	char(20),
    backlink	char(20)
);
create unique index PSlot_name on PSlot using btree (slotname bpchar_ops);
create table PLine (
    slotname	char(20),
    phonenumber	char(20),
    comment	text,
    backlink	char(20)
);
create unique index PLine_name on PLine using btree (slotname bpchar_ops);
create table Hub (
    name	char(14),
    comment	text,
    nslots	integer
);
create unique index Hub_name on Hub using btree (name bpchar_ops);
create table HSlot (
    slotname	char(20),
    hubname	char(14),
    slotno	integer,
    slotlink	char(20)
);
create unique index HSlot_name on HSlot using btree (slotname bpchar_ops);
create index HSlot_hubname on HSlot using btree (hubname bpchar_ops);
create table System (
    name	text,
    comment	text
);
create unique index System_name on System using btree (name text_ops);
create table IFace (
    slotname	char(20),
    sysname	text,
    ifname	text,
    slotlink	char(20)
);
create unique index IFace_name on IFace using btree (slotname bpchar_ops);
create table PHone (
    slotname	char(20),
    comment	text,
    slotlink	char(20)
);
create unique index PHone_name on PHone using btree (slotname bpchar_ops);
commit;
create function refcursor_test2(int, int) returns boolean as $$
declare
    c1 cursor (param1 int, param2 int) for select * from rc_test where a > param1 and b > param2;
    nonsense record;
begin
    open c1($1, $2);
    fetch c1 into nonsense;
    close c1;
    if found then
        return true;
    else
        return false;
    end if;
end
$$ language plpgsql;
create function constant_refcursor() returns refcursor as $$
declare
    rc constant refcursor;
begin
    open rc for select a from rc_test;
    return rc;
end
$$ language plpgsql;
create or replace function constant_refcursor() returns refcursor as $$
declare
    rc constant refcursor := 'my_cursor_name';
begin
    open rc for select a from rc_test;
    return rc;
end
$$ language plpgsql;
create function namedparmcursor_test1(int, int) returns boolean as $$
declare
    c1 cursor (param1 int, param12 int) for select * from rc_test where a > param1 and b > param12;
    nonsense record;
begin
    open c1(param12 := $2, param1 := $1);
    fetch c1 into nonsense;
    close c1;
    if found then
        return true;
    else
        return false;
    end if;
end
$$ language plpgsql;
create function namedparmcursor_test2(int, int) returns boolean as $$
declare
    c1 cursor (param1 int, param2 int) for select * from rc_test where a > param1 and b > param2;
    nonsense record;
begin
    open c1(param1 := $1, $2);
    fetch c1 into nonsense;
    close c1;
    if found then
        return true;
    else
        return false;
    end if;
end
$$ language plpgsql;
create function namedparmcursor_test7() returns void as $$
declare
  c1 cursor (p1 int, p2 int) for
    select * from tenk1 where thousand = p1 and tenthous = p2;
begin
  open c1 (p2 := 77, p1 := 42/0);
end $$ language plpgsql;
create function namedparmcursor_test8() returns int4 as $$
declare
  c1 cursor (p1 int, p2 int) for
    select count(*) from tenk1 where thousand = p1 and tenthous = p2;
  n int4;
begin
  open c1 (77 -- test
  , 42);
  fetch c1 into n;
  return n;
end $$ language plpgsql;
create function namedparmcursor_test9(p1 int) returns int4 as $$
declare
  c1 cursor (p1 int, p2 int, debug int) for
    select count(*) from tenk1 where thousand = p1 and tenthous = p2
      and four = debug;
  p2 int4 := 1006;
  n int4;
begin
  open c1 (p1 := p1, p2 := p2, debug := 2);
  fetch c1 into n;
  return n;
end $$ language plpgsql;
create function raise_test3(int) returns int as $$
begin
    raise notice 'This message has no parameters (despite having %% signs in it)!';
    return $1;
end;
$$ language plpgsql;
CREATE FUNCTION reraise_test() RETURNS void AS $$
BEGIN
   BEGIN
       RAISE syntax_error;
   EXCEPTION
       WHEN syntax_error THEN
           BEGIN
               raise notice 'exception % thrown in inner block, reraising', sqlerrm;
               RAISE;
           EXCEPTION
               WHEN OTHERS THEN
                   raise notice 'RIGHT - exception % caught in inner block', sqlerrm;
           END;
   END;
EXCEPTION
   WHEN OTHERS THEN
       raise notice 'WRONG - exception % caught in outer block', sqlerrm;
END;
$$ LANGUAGE plpgsql;
create function void_return_expr() returns void as $$
begin
    perform 2+2;
end;$$ language plpgsql;
create function missing_return_expr() returns int as $$
begin
    perform 2+2;
end;$$ language plpgsql;
drop function void_return_expr();
drop function missing_return_expr();
create table eifoo (i integer, y integer);
create type eitype as (i integer, y integer);
create or replace function execute_into_test(varchar) returns record as $$
declare
    _r record;
    _rt eifoo%rowtype;
    _v eitype;
    i int;
    j int;
    k int;
begin
    execute 'insert into '||$1||' values(10,15)';
    execute 'select (row).* from (select row(10,1)::eifoo) s' into _r;
    raise notice '% %', _r.i, _r.y;
    execute 'select * from '||$1||' limit 1' into _rt;
    raise notice '% %', _rt.i, _rt.y;
    execute 'select *, 20 from '||$1||' limit 1' into i, j, k;
    raise notice '% % %', i, j, k;
    execute 'select 1,2' into _v;
    return _v;
end; $$ language plpgsql;
drop table eifoo cascade;
drop type eitype cascade;
create function excpt_test1() returns void as $$
begin
    raise notice '% %', sqlstate, sqlerrm;
end; $$ language plpgsql;
create function excpt_test2() returns void as $$
begin
    begin
        begin
            raise notice '% %', sqlstate, sqlerrm;
        end;
    end;
end; $$ language plpgsql;
create function excpt_test3() returns void as $$
begin
    begin
        raise exception 'user exception';
    exception when others then
	    raise notice 'caught exception % %', sqlstate, sqlerrm;
	    begin
	        raise notice '% %', sqlstate, sqlerrm;
	        perform 10/0;
        exception
            when substring_error then
                raise notice 'unexpected exception: % %', sqlstate, sqlerrm;
	        when division_by_zero then
	            raise notice 'caught exception % %', sqlstate, sqlerrm;
	    end;
	    raise notice '% %', sqlstate, sqlerrm;
    end;
end; $$ language plpgsql;
create function excpt_test4() returns text as $$
begin
	begin perform 1/0;
	exception when others then return sqlerrm; end;
end; $$ language plpgsql;
drop function excpt_test1();
drop function excpt_test2();
drop function excpt_test3();
drop function excpt_test4();
create function raise_exprs() returns void as $$
declare
    a integer[] = '{10,20,30}';
    c varchar = 'xyz';
    i integer;
begin
    i := 2;
    raise notice '%; %; %; %; %; %', a, a[i], c, (select c || 'abc'), row(10,'aaa',NULL,30), NULL;
end;$$ language plpgsql;
drop function raise_exprs();
create function multi_datum_use(p1 int) returns bool as $$
declare
  x int;
  y int;
begin
  select into x,y unique1/p1, unique1/$1 from tenk1 group by unique1/p1;
  return x = y;
end$$ language plpgsql;
create temp table foo (f1 int, f2 int);
insert into foo values (1,2), (3,4);
create or replace function stricttest() returns void as $$
declare x record;
begin
  insert into foo values(5,6) returning * into x;
  raise notice 'x.f1 = %, x.f2 = %', x.f1, x.f2;
end$$ language plpgsql;
create or replace function stricttest() returns void as $$
declare x record;
begin
  insert into foo values(7,8),(9,10) returning * into x;
  raise notice 'x.f1 = %, x.f2 = %', x.f1, x.f2;
end$$ language plpgsql;
create or replace function stricttest() returns void as $$
declare x record;
begin
  execute 'insert into foo values(5,6) returning *' into x;
  raise notice 'x.f1 = %, x.f2 = %', x.f1, x.f2;
end$$ language plpgsql;
create or replace function stricttest() returns void as $$
declare x record;
begin
  execute 'insert into foo values(7,8),(9,10) returning *' into x;
  raise notice 'x.f1 = %, x.f2 = %', x.f1, x.f2;
end$$ language plpgsql;
create or replace function stricttest() returns void as $$
declare x record;
begin
  select * from foo where f1 = 3 into strict x;
  raise notice 'x.f1 = %, x.f2 = %', x.f1, x.f2;
end$$ language plpgsql;
create or replace function stricttest() returns void as $$
declare x record;
begin
  select * from foo where f1 = 0 into strict x;
  raise notice 'x.f1 = %, x.f2 = %', x.f1, x.f2;
end$$ language plpgsql;
create or replace function stricttest() returns void as $$
declare x record;
begin
  select * from foo where f1 > 3 into strict x;
  raise notice 'x.f1 = %, x.f2 = %', x.f1, x.f2;
end$$ language plpgsql;
create or replace function stricttest() returns void as $$
declare x record;
begin
  execute 'select * from foo where f1 = 3' into strict x;
  raise notice 'x.f1 = %, x.f2 = %', x.f1, x.f2;
end$$ language plpgsql;
create or replace function stricttest() returns void as $$
declare x record;
begin
  execute 'select * from foo where f1 = 0' into strict x;
  raise notice 'x.f1 = %, x.f2 = %', x.f1, x.f2;
end$$ language plpgsql;
create or replace function stricttest() returns void as $$
declare x record;
begin
  execute 'select * from foo where f1 > 3' into strict x;
  raise notice 'x.f1 = %, x.f2 = %', x.f1, x.f2;
end$$ language plpgsql;
drop function stricttest();
create or replace function stricttest() returns void as $$
declare
x record;
p1 int := 2;
p3 text := 'foo';
begin
  select * from foo where f1 = p1 and f1::text = p3 into strict x;
  raise notice 'x.f1 = %, x.f2 = %', x.f1, x.f2;
end$$ language plpgsql;
create or replace function stricttest() returns void as $$
declare
x record;
p1 int := 2;
p3 text := $a$'Valame Dios!' dijo Sancho; 'no le dije yo a vuestra merced que mirase bien lo que hacia?'$a$;
begin
  select * from foo where f1 = p1 and f1::text = p3 into strict x;
  raise notice 'x.f1 = %, x.f2 = %', x.f1, x.f2;
end$$ language plpgsql;
create or replace function stricttest() returns void as $$
declare
x record;
p1 int := 2;
p3 text := 'foo';
begin
  select * from foo where f1 > p1 or f1::text = p3  into strict x;
  raise notice 'x.f1 = %, x.f2 = %', x.f1, x.f2;
end$$ language plpgsql;
create or replace function stricttest() returns void as $$
declare x record;
begin
  select * from foo where f1 > 3 into strict x;
  raise notice 'x.f1 = %, x.f2 = %', x.f1, x.f2;
end$$ language plpgsql;
create or replace function stricttest() returns void as $$
declare x record;
begin
  execute 'select * from foo where f1 = $1 or f1::text = $2' using 0, 'foo' into strict x;
  raise notice 'x.f1 = %, x.f2 = %', x.f1, x.f2;
end$$ language plpgsql;
create or replace function stricttest() returns void as $$
declare x record;
begin
  execute 'select * from foo where f1 > $1' using 1 into strict x;
  raise notice 'x.f1 = %, x.f2 = %', x.f1, x.f2;
end$$ language plpgsql;
create or replace function stricttest() returns void as $$
declare x record;
begin
  execute 'select * from foo where f1 > 3' into strict x;
  raise notice 'x.f1 = %, x.f2 = %', x.f1, x.f2;
end$$ language plpgsql;
create or replace function stricttest() returns void as $$
#print_strict_params off
declare
x record;
p1 int := 2;
p3 text := 'foo';
begin
  select * from foo where f1 > p1 or f1::text = p3  into strict x;
  raise notice 'x.f1 = %, x.f2 = %', x.f1, x.f2;
end$$ language plpgsql;
create or replace function stricttest() returns void as $$
#print_strict_params on
declare
x record;
p1 int := 2;
p3 text := 'foo';
begin
  select * from foo where f1 > p1 or f1::text = p3  into strict x;
  raise notice 'x.f1 = %, x.f2 = %', x.f1, x.f2;
end$$ language plpgsql;
create or replace function shadowtest(in1 int)
	returns table (out1 int) as $$
declare
in1 int;
out1 int;
begin
end
$$ language plpgsql;
create or replace function shadowtest(in1 int)
	returns table (out1 int) as $$
declare
in1 int;
out1 int;
begin
end
$$ language plpgsql;
drop function shadowtest(int);
create or replace function shadowtest()
	returns void as $$
declare
f1 int;
begin
	declare
	f1 int;
	begin
	end;
end$$ language plpgsql;
drop function shadowtest();
create or replace function shadowtest(in1 int)
	returns void as $$
declare
in1 int;
begin
	declare
	in1 int;
	begin
	end;
end$$ language plpgsql;
drop function shadowtest(int);
create or replace function shadowtest()
	returns void as $$
declare
f1 int;
c1 cursor (f1 int) for select 1;
begin
end$$ language plpgsql;
drop function shadowtest();
create or replace function shadowtest(f1 int)
	returns boolean as $$
declare f1 int; begin return 1; end $$ language plpgsql;
create or replace function shadowtest(f1 int)
	returns boolean as $$
declare f1 int; begin return 1; end $$ language plpgsql;
do $$
declare x int;
begin
  select v from generate_series(1,2) g(v) into x;
end;
$$;
do $$
declare x int;
begin
  select v from generate_series(1,2) g(v) into x;
end;
$$;
do $$
declare
  x int;
  y int;
begin
  select 1 into x, y;
  select 1,2 into x, y;
  select 1,2,3 into x, y;
end
$$;
do $$
declare
  x int;
  y int;
begin
  select 1 into x, y;
  select 1,2 into x, y;
  select 1,2,3 into x, y;
end
$$;
create table test_01(a int, b int, c int);
alter table test_01 drop column a;
insert into test_01 values(10,20);
do $$
declare
  x int;
  y int;
begin
  select * from test_01 into x, y; -- should be ok
  raise notice 'ok';
  select * from test_01 into x;    -- should to fail
end;
$$;
do $$
declare
  t test_01;
begin
  select 1, 2 into t;  -- should be ok
  raise notice 'ok';
  select 1, 2, 3 into t; -- should fail;
end;
$$;
do $$
declare
  t test_01;
begin
  select 1 into t; -- should fail;
end;
$$;
drop table test_01;
create function pl_qual_names (param1 int) returns void as $$
<<outerblock>>
declare
  param1 int := 1;
begin
  <<innerblock>>
  declare
    param1 int := 2;
  begin
    raise notice 'param1 = %', param1;
    raise notice 'pl_qual_names.param1 = %', pl_qual_names.param1;
    raise notice 'outerblock.param1 = %', outerblock.param1;
    raise notice 'innerblock.param1 = %', innerblock.param1;
  end;
end;
$$ language plpgsql;
drop function pl_qual_names(int);
create type record_type as (x text, y int, z boolean);
create function exc_using(int, text) returns int as $$
declare i int;
begin
  for i in execute 'select * from generate_series(1,$1)' using $1+1 loop
    raise notice '%', i;
  end loop;
  execute 'select $2 + $2*3 + length($1)' into i using $2,$1;
  return i;
end
$$ language plpgsql;
drop function exc_using(int, text);
create or replace function exc_using(int) returns void as $$
declare
  c refcursor;
  i int;
begin
  open c for execute 'select * from generate_series(1,$1)' using $1+1;
  loop
    fetch c into i;
    exit when not found;
    raise notice '%', i;
  end loop;
  close c;
  return;
end;
$$ language plpgsql;
drop function exc_using(int);
create or replace function forc01() returns void as $$
declare
  c cursor(r1 integer, r2 integer)
       for select * from generate_series(r1,r2) i;
  c2 cursor
       for select * from generate_series(41,43) i;
begin
  c := 'c';
  c2 := 'c2';
  for r in c(5,7) loop
    raise notice '% from %', r.i, c;
  end loop;
  for r in c(9,10) loop
    raise notice '% from %', r.i, c;
  end loop;
  for r in c2 loop
    raise notice '% from %', r.i, c2;
  end loop;
  raise notice 'after loop, c2 = %', c2;
  c2 := 'special_name';
  for r in c2 loop
    raise notice '% from %', r.i, c2;
  end loop;
  raise notice 'after loop, c2 = %', c2;
  c2 := null;
  for r in c2 loop
    raise notice '%', r.i;
  end loop;
  raise notice 'after loop, c2 = %', c2;
  return;
end;
$$ language plpgsql;
create temp table forc_test as
  select n as i, n as j from generate_series(1,10) n;
drop function forc01();
create table tabwithcols(a int, b int, c int, d int);
insert into tabwithcols values(10,20,30,40),(50,60,70,80);
alter table tabwithcols drop column b;
alter table tabwithcols drop column d;
alter table tabwithcols add column d int;
drop table tabwithcols;
create type compostype as (x int, y varchar);
create or replace function compos() returns compostype as $$
declare
  v compostype;
begin
  v := (1, 'hello');
  return v;
end;
$$ language plpgsql;
create or replace function compos() returns compostype as $$
declare
  v record;
begin
  v := (1, 'hello'::varchar);
  return v;
end;
$$ language plpgsql;
create or replace function compos() returns compostype as $$
begin
  return (1, 'hello'::varchar);
end;
$$ language plpgsql;
create or replace function compos() returns compostype as $$
begin
  return (1, 'hello');
end;
$$ language plpgsql;
create or replace function compos() returns compostype as $$
begin
  return (1, 'hello')::compostype;
end;
$$ language plpgsql;
drop function compos();
create or replace function composrec() returns record as $$
declare
  v record;
begin
  v := (1, 'hello');
  return v;
end;
$$ language plpgsql;
create or replace function composrec() returns record as $$
begin
  return (1, 'hello');
end;
$$ language plpgsql;
drop function composrec();
create or replace function compos() returns compostype as $$
begin
  return 1 + 1;
end;
$$ language plpgsql;
create or replace function compos() returns compostype as $$
declare x int := 42;
begin
  return x;
end;
$$ language plpgsql;
drop function compos();
create or replace function compos() returns int as $$
declare
  v compostype;
begin
  v := (1, 'hello');
  return v;
end;
$$ language plpgsql;
create or replace function compos() returns int as $$
begin
  return (1, 'hello')::compostype;
end;
$$ language plpgsql;
drop function compos();
drop type compostype;
create or replace function raise_test() returns void as $$
begin
  raise notice '% % %', 1, 2, 3
     using errcode = '55001', detail = 'some detail info', hint = 'some hint';
  raise '% % %', 1, 2, 3
     using errcode = 'division_by_zero', detail = 'some detail info';
end;
$$ language plpgsql;
create or replace function raise_test() returns void as $$
begin
  raise 'check me'
     using errcode = 'division_by_zero', detail = 'some detail info';
  exception
    when others then
      raise notice 'SQLSTATE: % SQLERRM: %', sqlstate, sqlerrm;
      raise;
end;
$$ language plpgsql;
create or replace function raise_test() returns void as $$
begin
  raise 'check me'
     using errcode = '1234F', detail = 'some detail info';
  exception
    when others then
      raise notice 'SQLSTATE: % SQLERRM: %', sqlstate, sqlerrm;
      raise;
end;
$$ language plpgsql;
create or replace function raise_test() returns void as $$
begin
  raise 'check me'
     using errcode = '1234F', detail = 'some detail info';
  exception
    when sqlstate '1234F' then
      raise notice 'SQLSTATE: % SQLERRM: %', sqlstate, sqlerrm;
      raise;
end;
$$ language plpgsql;
create or replace function raise_test() returns void as $$
begin
  raise division_by_zero using detail = 'some detail info';
  exception
    when others then
      raise notice 'SQLSTATE: % SQLERRM: %', sqlstate, sqlerrm;
      raise;
end;
$$ language plpgsql;
create or replace function raise_test() returns void as $$
begin
  raise division_by_zero;
end;
$$ language plpgsql;
create or replace function raise_test() returns void as $$
begin
  raise sqlstate '1234F';
end;
$$ language plpgsql;
create or replace function raise_test() returns void as $$
begin
  raise division_by_zero using message = 'custom' || ' message';
end;
$$ language plpgsql;
create or replace function raise_test() returns void as $$
begin
  raise using message = 'custom' || ' message', errcode = '22012';
end;
$$ language plpgsql;
create or replace function raise_test() returns void as $$
begin
  raise notice 'some message' using message = 'custom' || ' message', errcode = '22012';
end;
$$ language plpgsql;
create or replace function raise_test() returns void as $$
begin
  raise division_by_zero using message = 'custom' || ' message', errcode = '22012';
end;
$$ language plpgsql;
create or replace function raise_test() returns void as $$
begin
  raise;
end;
$$ language plpgsql;
create function zero_divide() returns int as $$
declare v int := 0;
begin
  return 10 / v;
end;
$$ language plpgsql parallel safe;
create or replace function raise_test() returns void as $$
begin
  raise exception 'custom exception'
     using detail = 'some detail of custom exception',
           hint = 'some hint related to custom exception';
end;
$$ language plpgsql;
create function error_trap_test() returns text as $$
begin
  perform zero_divide();
  return 'no error detected!';
exception when division_by_zero then
  return 'division_by_zero detected';
end;
$$ language plpgsql parallel safe;
drop function error_trap_test();
drop function zero_divide();
create or replace function raise_test() returns void as $$
begin
  perform 1/0;
exception
  when sqlstate '22012' then
    raise notice using message = sqlstate;
    raise sqlstate '22012' using message = 'substitute message';
end;
$$ language plpgsql;
drop function raise_test();
create or replace function vari(variadic int[])
returns void as $$
begin
  for i in array_lower($1,1)..array_upper($1,1) loop
    raise notice '%', $1[i];
  end loop; end;
$$ language plpgsql;
drop function vari(int[]);
create or replace function pleast(variadic numeric[])
returns numeric as $$
declare aux numeric = $1[array_lower($1,1)];
begin
  for i in array_lower($1,1)+1..array_upper($1,1) loop
    if $1[i] < aux then aux := $1[i]; end if;
  end loop;
  return aux;
end;
$$ language plpgsql immutable strict;
create or replace function pleast(numeric)
returns numeric as $$
begin
  raise notice 'non-variadic function called';
  return $1;
end;
$$ language plpgsql immutable strict;
drop function pleast(numeric[]);
drop function pleast(numeric);
create function tftest(int) returns table(a int, b int) as $$
begin
  return query select $1, $1+i from generate_series(1,5) g(i);
end;
$$ language plpgsql immutable strict;
