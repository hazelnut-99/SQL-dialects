drop table if exists a;
drop table if exists b;
create table a (i int, j int) engine Log;
create materialized view b engine Log as select countState(*) from a;
insert into a values (1, 2);
