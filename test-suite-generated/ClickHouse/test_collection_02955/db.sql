drop table if exists data;
drop table if exists dist;
create table data (key Int) engine=Memory();
system stop distributed sends dist;
