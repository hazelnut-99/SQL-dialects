drop table if exists tab;
create table tab (val UInt8) engine = MergeTree order by val;
