drop table if exists test;
create table test(dim1 String, dim2 String, projection p1 (select dim1, dim2, count() group by dim1, dim2)) engine MergeTree order by dim1;
insert into test values ('a', 'x') ('a', 'y') ('b', 'x') ('b', 'y');
