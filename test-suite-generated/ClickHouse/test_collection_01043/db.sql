drop table if exists mt1;
drop table if exists mt2;
create table mt1 (n Int64) engine=MergeTree order by n;
create table mt2 (n Int64) engine=MergeTree order by n;
insert into mt1 values (1);
insert into mt2 values (10);
