with (select number from numbers(10) intersect select 5) as a select a * 10;
with (select 5 except select 1) as a select a except select 5;
with (select number from numbers(10) intersect select 5) as a select a intersect select 1;
with (select number from numbers(10) intersect select 5) as a select a except select 1;
with (select count() from (select 1 union distinct select 2 except select 1)) as max
select count() from (select 1 union all select max) limit 100;
