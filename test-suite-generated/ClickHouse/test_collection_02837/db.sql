drop table if exists test ;
create table test(str Nullable(String), i Int64) engine=Memory();
insert into test values(null, 1),('', 2),('s', 1);
