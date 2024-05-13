drop table if exists map_test;
create table map_test engine=TinyLog() as (select (number + 1) as n, map(1, 1, number,2) as m from numbers(1, 5));
drop table map_test;
