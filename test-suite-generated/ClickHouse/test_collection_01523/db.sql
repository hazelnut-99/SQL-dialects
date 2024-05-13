drop table if exists src_table_1;
drop table if exists src_table_2;
drop table if exists src_table_3;
create table src_table_1 (n UInt64) engine=Memory as select * from numbers(10);
create table src_table_2 (n UInt64) engine=Log as select number * 10 from numbers(10);
create table src_table_3 (n UInt64) engine=MergeTree order by n as select number * 100 from numbers(10);
create temporary table tmp (s String);
insert into tmp values ('src_table_1'), ('src_table_3');
