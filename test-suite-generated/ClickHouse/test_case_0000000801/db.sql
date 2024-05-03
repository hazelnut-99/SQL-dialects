drop  table if exists order_test1;
create table order_test1
(
    timestamp DateTime64(3),
    color     LowCardinality(String)
) engine = MergeTree() ORDER BY tuple();
insert into order_test1 values ('2020-08-21 18:46:08.000','red')('2020-08-21 18:46:08.000','green');
insert into order_test1 values ('2020-08-21 18:46:07.000','red')('2020-08-21 18:46:07.000','green');
insert into order_test1 values ('2020-08-21 18:46:06.000','red')('2020-08-21 18:46:06.000','green');
