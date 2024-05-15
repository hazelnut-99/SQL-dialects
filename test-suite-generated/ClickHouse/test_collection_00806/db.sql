drop table if exists tst;
create table tst (timestamp DateTime, val Nullable(Int8)) engine SummingMergeTree partition by toYYYYMM(timestamp) ORDER by (timestamp);
insert into tst values ('2018-02-01 00:00:00', 1), ('2018-02-02 00:00:00', 2);
drop table if exists tst;
create table tst (timestamp DateTime, val Nullable(Int8)) engine SummingMergeTree partition by toYYYYMM(timestamp) ORDER by (timestamp);
insert into tst values ('2018-02-01 00:00:00', 1), ('2018-02-02 00:00:00', 2), ('2018-02-01 00:00:00', 3), ('2018-02-02 00:00:00', 4);
