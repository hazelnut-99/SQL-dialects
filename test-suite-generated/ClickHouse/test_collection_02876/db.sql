drop table if exists tab;
create table tab (x DateTime) engine MergeTree order by x;
