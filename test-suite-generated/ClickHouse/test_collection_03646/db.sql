drop table if exists tbl;
create table tbl (s String, i int) engine MergeTree order by i;
insert into tbl values ('123', 123);
drop row policy if exists filter on tbl;
