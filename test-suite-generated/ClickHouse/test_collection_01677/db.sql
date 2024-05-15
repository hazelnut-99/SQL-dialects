drop table if exists x;
create table x (i UInt64, j UInt64, k UInt64, projection agg (select sum(j), avg(k) group by i), projection norm (select j, k order by i)) engine MergeTree order by tuple();
insert into x values (1, 2, 3);
drop table x;
create table if not exists flows (SrcAS UInt32, Bytes UInt64) engine MergeTree() order by tuple();
insert into table flows values (15169, 83948), (12322, 98989), (60068, 99990), (15169, 89898), (15169, 83948), (15169, 89898), (15169, 83948), (15169, 89898), (15169, 83948), (15169, 89898), (15169, 83948), (15169, 89898);
