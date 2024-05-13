drop table if exists mt;
drop table if exists m;
create table mt (p int, n int) engine=MergeTree order by tuple() partition by p;
create table m (n int) engine=Memory;
insert into mt values (1, 1), (2, 1);
insert into mt values (1, 2), (2, 2);
