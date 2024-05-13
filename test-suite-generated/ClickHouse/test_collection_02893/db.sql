drop table if exists t1;
create table t1(x1 Date32) engine Memory;
insert into t1 values ('1900-01-01'),('1899-01-01'),('2299-12-15'),('2300-12-31'),('2021-06-22');
