drop table if exists tab;
create table tab (x LowCardinality(String)) engine = MergeTree order by tuple();
insert into tab values ('a'), ('bb'), ('a'), ('cc');
