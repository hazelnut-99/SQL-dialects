drop table if exists test_join;
create table test_join (date Date, id Int32, name Nullable(String)) engine = MergeTree partition by date order by id;
insert into test_join values ('2019-01-01', 1, 'a');
insert into test_join values ('2019-01-01', 2, 'b');
insert into test_join values ('2019-01-01', 3, 'c');
insert into test_join values ('2019-01-01', 1, null);
