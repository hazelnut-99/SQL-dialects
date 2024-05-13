drop table if exists projection_test;
drop row policy if exists filter on projection_test;
drop table if exists projection_test;
drop table if exists projection_without_key;
create table projection_without_key (key UInt32, PROJECTION x (SELECT max(key))) engine MergeTree order by key;
insert into projection_without_key select number from numbers(1000);
