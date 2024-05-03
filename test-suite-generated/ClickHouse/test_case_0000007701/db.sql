drop table if exists x;
create table x (dt String) engine MergeTree partition by toYYYYMM(toDate(dt)) order by tuple();
insert into x values ('2022-10-01 10:10:10');
