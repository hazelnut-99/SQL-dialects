drop table if exists m3;
drop table if exists replacing_m3;
create table m3(a Int64, b UInt64) Engine=MergeTree order by tuple();
insert into m3 values (0,0);
insert into m3 values (-1,1);
drop table m3;
create table replacing_m3(a Int64, b UInt64) Engine=ReplacingMergeTree() order by (a, b);
SYSTEM STOP MERGES replacing_m3;
