drop table if exists tab;
create table tab (x UInt64, v UInt64) engine = ReplacingMergeTree(v) order by (x, sipHash64(x)) sample by sipHash64(x);
insert into tab select number, number from numbers(1000);
drop table tab;
create table tab (x UInt64, v UInt64) engine = ReplacingMergeTree(v) order by (x, sipHash64(x)) sample by sipHash64(x);
insert into tab select number, number from numbers(1000);
