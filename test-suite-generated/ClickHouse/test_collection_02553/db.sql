SYSTEM STOP MERGES tbl;
create table if not exists replacing_mt (x String) engine=ReplacingMergeTree() ORDER BY x;
insert into replacing_mt values ('abc');
insert into replacing_mt values ('abc');
create table if not exists lhs (x String) engine=ReplacingMergeTree() ORDER BY x;
create table if not exists rhs (x String) engine=ReplacingMergeTree() ORDER BY x;
insert into lhs values ('abc');
insert into lhs values ('abc');
insert into rhs values ('abc');
insert into rhs values ('abc');
create table if not exists regular_mt_table (x String) engine=MergeTree() ORDER BY x;
