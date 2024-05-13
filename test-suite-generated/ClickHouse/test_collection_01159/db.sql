drop table if exists tab;
create table tab (x UInt64) engine = MergeTree order by tuple();
