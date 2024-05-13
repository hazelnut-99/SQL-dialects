drop table if exists data_01295;
create table data_01295 (key Int) Engine=AggregatingMergeTree() order by key;
insert into data_01295 values (1);
