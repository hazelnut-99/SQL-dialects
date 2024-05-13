drop table if exists tab;
create table tab (t DateTime) engine = MergeTree order by toStartOfDay(t);
insert into tab values ('2020-02-02 01:01:01');
