drop table if exists buffer_02572;
drop table if exists data_02572;
drop table if exists copy_02572;
drop table if exists mv_02572;
create table copy_02572 (key Int) engine=Memory();
create table data_02572 (key Int) engine=Memory();
create table buffer_02572 (key Int) engine=Buffer(currentDatabase(), data_02572, 1,
    /* never direct flush for flush from background thread */
    /* min_time= */ 3, 3,
    1, 1e9,
    1, 1e9);
create materialized view mv_02572 to copy_02572 as select * from data_02572;
insert into buffer_02572 values (1);
