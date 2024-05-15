drop table if exists table_02152;
create table table_02152 (a String, b LowCardinality(String)) engine = MergeTree order by a;
insert into table_02152 values ('a_1', 'b_1') ('a_2', 'b_2') ('a_1', 'b_3') ('a_2', 'b_2');
