drop table if exists data;
create table data (part Int) engine=MergeTree() order by tuple() partition by part;
insert into data values (1)(2);
