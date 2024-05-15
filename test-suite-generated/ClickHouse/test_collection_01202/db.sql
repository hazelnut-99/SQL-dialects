drop table if exists map_test;
create table map_test engine=TinyLog() as (select (number + 1) as n, ([1, number], [1,2]) as map from numbers(1, 5));
