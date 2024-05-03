drop table if exists array_intersect;
create table array_intersect (date Date, arr Array(UInt8)) engine=MergeTree partition by date order by date;
insert into array_intersect values ('2019-01-01', [1,2,3]);
insert into array_intersect values ('2019-01-01', [1,2]);
insert into array_intersect values ('2019-01-01', [1]);
insert into array_intersect values ('2019-01-01', []);
optimize table array_intersect;
