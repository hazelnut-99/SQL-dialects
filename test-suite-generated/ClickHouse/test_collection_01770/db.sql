drop table if exists mapop_test;
create table mapop_test engine=TinyLog() as (select map(1, toInt32(2), number, 2) as m from numbers(1, 10));
drop table mapop_test;
