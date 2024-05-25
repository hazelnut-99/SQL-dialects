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
with r(a,b) as materialized
  (values (1,row(1,2)), (1,row(null,null)), (1,null),
          (null,row(1,2)), (null,row(null,null)), (null,null) )
select r, r is null as isnull, r is not null as isnotnull from r;
with cte(c) as materialized (select row(1, 2)),
     cte2(c) as (select * from cte)
select * from cte2 as t
where (select * from (select c as c1) s
       where (select (c1).f1 > 0)) is not null;
create view composite_v as
with cte(c) as materialized (select row(1, 2)),
     cte2(c) as (select * from cte)
select 1 as one from cte2 as t
where (select * from (select c as c1) s
       where (select (c1).f1 > 0)) is not null;
drop view composite_v;
CREATE TABLE compositetable(a text, b text);
INSERT INTO compositetable(a, b) VALUES('fa', 'fb');
