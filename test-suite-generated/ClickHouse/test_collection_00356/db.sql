drop table if exists `table_00653`;
create table `table_00653` (val Int32) engine = MergeTree order by val;
insert into `table_00653` values (-2), (0), (2);
