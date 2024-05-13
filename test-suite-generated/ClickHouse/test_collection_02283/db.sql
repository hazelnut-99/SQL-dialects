create database if not exists shard_0;
create database if not exists shard_1;
drop table if exists shard_0.tbl;
drop table if exists shard_1.tbl;
drop table if exists distr;
create table shard_0.tbl (number UInt64) engine = MergeTree order by number;
create table shard_1.tbl (number UInt64) engine = MergeTree order by number;
