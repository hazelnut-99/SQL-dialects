create table data_02053 (id Int64, A Nullable(Int64), X Int64 materialized coalesce(A, -1)) engine=MergeTree order by id;
insert into data_02053 values (1, 42);
insert into data_02053 select 1, 42;
