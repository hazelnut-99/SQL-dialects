drop table if exists merge_dist_01223;
drop table if exists dist_01223;
drop table if exists dist_layer_01223;
drop table if exists data_01223;
create table data_01223 (key Int) Engine=Memory();
insert into data_01223 select * from numbers(3);
