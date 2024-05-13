drop table if exists t;
drop table if exists dist;
drop table if exists buf;
drop table if exists join;
create table t (n UInt64, s String default 's' || toString(n)) engine=Memory;
create table buf (n int) engine=Buffer(currentDatabase(), dist, 1, 10, 100, 10, 100, 1000, 1000);
system stop distributed sends dist;
insert into buf values (1);
system stop distributed sends buf;
insert into buf values (2);
replace table buf (n int) engine=Buffer(currentDatabase(), dist, 1, 10, 100, 10, 100, 1000, 1000);
system stop distributed sends dist;
insert into buf values (3);
replace table buf (n int) engine=Null;
create or replace table join engine=Join(ANY, INNER, n) as select * from t where throwIf(n); -- { serverError 395 }
create or replace table join engine=Join(ANY, INNER, n) as select * from t;
