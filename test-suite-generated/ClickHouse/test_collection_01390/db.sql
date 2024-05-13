drop table if exists ttl;
create table ttl (i Int, a Int, s String) engine = MergeTree order by i;
insert into ttl values (1, 1, 'a') (2, 1, 'b') (3, 1, 'c') (4, 1, 'd');
alter table ttl modify ttl a % 2 = 0 ? today() - 10 : toDate('2100-01-01');
alter table ttl materialize ttl;
alter table ttl update a = 0 where i % 2 = 0;
drop table ttl;
