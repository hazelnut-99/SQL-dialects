drop table if exists data_02572;
drop table if exists proxy_02572;
drop table if exists push_to_proxy_mv_02572;
drop table if exists receiver_02572;
create table data_02572 (key Int) engine=Memory();
create materialized view push_to_proxy_mv_02572 to proxy_02572 as select * from data_02572;
