begin;
create table numeric_tbl (f1 numeric(18,3), f2 numeric);
create view numeric_view as
  select
    f1, f1::numeric(16,4) as f1164, f1::numeric as f1n,
    f2, f2::numeric(16,4) as f2164, f2::numeric as f2n
  from numeric_tbl;
create table bpchar_tbl (f1 character(16) unique, f2 bpchar);
create view bpchar_view as
  select
    f1, f1::character(14) as f114, f1::bpchar as f1n,
    f2, f2::character(14) as f214, f2::bpchar as f2n
  from bpchar_tbl;
rollback;
begin;
create function return_int_input(int) returns int as $$
begin
	return $1;
end;
$$ language plpgsql stable;
create function return_text_input(text) returns text as $$
begin
	return $1;
end;
$$ language plpgsql stable;
rollback;
begin;
create type myint;
create function myintin(cstring) returns myint strict immutable language
  internal as 'int4in';
create function myintout(myint) returns cstring strict immutable language
  internal as 'int4out';
create function myinthash(myint) returns integer strict immutable language
  internal as 'hashint4';
create type myint (input = myintin, output = myintout, like = int4);
create cast (int4 as myint) without function;
create cast (myint as int4) without function;
create function myinteq(myint, myint) returns bool as $$
begin
  if $1 is null and $2 is null then
    return true;
  else
    return $1::int = $2::int;
  end if;
end;
$$ language plpgsql immutable;
create function myintne(myint, myint) returns bool as $$
begin
  return not myinteq($1, $2);
end;
$$ language plpgsql immutable;
create operator = (
  leftarg    = myint,
  rightarg   = myint,
  commutator = =,
  negator    = <>,
  procedure  = myinteq,
  restrict   = eqsel,
  join       = eqjoinsel,
  merges
);
create operator <> (
  leftarg    = myint,
  rightarg   = myint,
  commutator = <>,
  negator    = =,
  procedure  = myintne,
  restrict   = eqsel,
  join       = eqjoinsel,
  merges
);
create operator class myint_ops
default for type myint using hash as
  operator    1   =  (myint, myint),
  function    1   myinthash(myint);
create table inttest (a myint);
insert into inttest values(1::myint),(null);
