drop table if exists data;
create table data (key Int) engine=AggregatingMergeTree() order by tuple();
insert into data values (0);
