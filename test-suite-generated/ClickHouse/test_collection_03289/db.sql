drop table if exists dst_02224;
drop table if exists src_02224;
create table dst_02224 (key Int) engine=Memory();
create table src_02224 (key Int) engine=Memory();
insert into src_02224 values (1);
truncate table dst_02224;
truncate table dst_02224;
truncate table dst_02224;
truncate table dst_02224;
