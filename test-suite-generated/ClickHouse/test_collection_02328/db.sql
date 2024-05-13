drop table if exists dist_01643;
drop table if exists data_01643;
create table data_01643 (key Int) engine=Memory();
system stop distributed sends dist_01643;
