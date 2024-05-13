SYSTEM STOP MERGES tbl;
create table if not exists replacing_mt (x String) engine=ReplacingMergeTree() ORDER BY x;
insert into replacing_mt values ('abc');
insert into replacing_mt values ('abc');
