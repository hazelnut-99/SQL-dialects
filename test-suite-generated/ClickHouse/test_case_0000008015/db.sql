DROP TABLE IF EXISTS union;
create view union as select 1 as test union all select 2;
