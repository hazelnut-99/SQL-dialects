drop table if exists da_memory_efficient_shard;
create table da_memory_efficient_shard(A Int64, B Int64) Engine=MergeTree order by A partition by B % 2;
insert into da_memory_efficient_shard select number, number from numbers(100000);
