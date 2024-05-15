drop table if exists 02681_undrop_mergetree sync;
create table 02681_undrop_mergetree (id Int32) Engine=MergeTree() order by id;
insert into 02681_undrop_mergetree values (1),(2),(3);
drop table 02681_undrop_mergetree;
undrop table 02681_undrop_mergetree;
