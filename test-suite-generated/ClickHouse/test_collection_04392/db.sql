create database if not exists shard_0;
create database if not exists shard_1;
drop table if exists shard_0.from_0;
drop table if exists shard_1.from_0;
drop table if exists shard_0.from_1;
drop table if exists shard_1.from_1;
drop table if exists shard_0.to;
drop table if exists shard_1.to;
