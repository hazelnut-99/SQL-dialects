drop table if exists x;
create table x (pk int, arr Array(int), projection p (select arr order by pk)) engine MergeTree order by tuple();
insert into x values (1, [2]);
