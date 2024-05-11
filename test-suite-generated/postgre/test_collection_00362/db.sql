create type complex as (r float8, i float8);
create temp table fullname (first text, last text);
create type quad as (c1 complex, c2 complex);
rollback;
create temp table compos (f1 int, f2 text);
create function fcompos1(v compos) returns void as $$
insert into compos values (v.*);
$$ language sql;
create function fcompos2(v compos) returns void as $$
select fcompos1(v);
$$ language sql;
create function fcompos3(v compos) returns void as $$
select fcompos1(fcompos3.v.*);
$$ language sql;
