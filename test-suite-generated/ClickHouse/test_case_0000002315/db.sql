drop table if exists test1;
create table test1 (i Int64) engine MergeTree order by i;
insert into test1 values (53), (1777), (53284);
