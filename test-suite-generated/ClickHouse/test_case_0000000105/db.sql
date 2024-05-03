drop table if exists test_in_tuple_1;
drop table if exists test_in_tuple_2;
drop table if exists test_in_tuple;
create table test_in_tuple_1 (key Int32, key_2 Int32, x Array(Int32), y Array(Int32)) engine = MergeTree order by (key, key_2);
create table test_in_tuple_2 (key Int32, key_2 Int32, x Array(Int32), y Array(Int32)) engine = MergeTree order by (key, key_2);
create table test_in_tuple as test_in_tuple_1 engine = Merge(currentDatabase(), '^test_in_tuple_[0-9]+$');
insert into test_in_tuple_1 values (1, 1, [1, 2], [1, 2]);
insert into test_in_tuple_2 values (2, 1, [1, 2], [1, 2]);
