drop table if exists dist_01555;
drop table if exists data_01555;
create table data_01555 (key Int) Engine=Null();
system stop distributed sends dist_01555;
