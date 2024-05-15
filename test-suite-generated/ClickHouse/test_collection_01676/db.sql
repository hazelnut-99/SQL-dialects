drop table if exists x;
create table x (i UInt64, j UInt64, k UInt64, projection agg (select sum(j), avg(k) group by i), projection norm (select j, k order by i)) engine MergeTree order by tuple();
insert into x values (1, 2, 3);
