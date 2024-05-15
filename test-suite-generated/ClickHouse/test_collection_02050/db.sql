with (select number from numbers(10) intersect select 5) as a select a * 10;
with (select 5 except select 1) as a select a except select 5;
with (select number from numbers(10) intersect select 5) as a select a intersect select 1;
with (select number from numbers(10) intersect select 5) as a select a except select 1;
