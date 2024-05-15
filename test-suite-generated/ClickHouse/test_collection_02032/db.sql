drop table if exists data;
create table data (key Int) engine=MergeTree() order by key;
