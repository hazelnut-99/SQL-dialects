drop table if exists data_01643;
create table data_01643 (key Int) engine=MergeTree() order by key;
insert into data_01643 values (1);
optimize table data_01643 final;
drop table data_01643;
