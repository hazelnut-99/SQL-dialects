drop table if exists map_test;
create table map_test engine=TinyLog() as (select ([1, number], [toInt32(2),2]) as map from numbers(1, 10));
drop table map_test;
