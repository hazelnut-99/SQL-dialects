drop table if exists T;
create table T(a Nullable(Int64)) engine = Memory();
insert into T values (1), (2), (3), (4), (5);
