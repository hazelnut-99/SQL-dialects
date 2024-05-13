drop table if exists order_by_another;
create table order_by_another (a Nullable(UInt64), b UInt64) Engine = MergeTree order by tuple();
insert into order_by_another values (1, 8), (1, 7), (1, 6), (1, 5), (1, 4), (1, 3), (1, 2), (1, 1);
