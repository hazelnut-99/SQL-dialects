drop table if exists ax;
drop table if exists bx;
create table ax (A Int64, B Int64) Engine = Memory;
create table bx (A Int64) Engine = Memory;
insert into ax values (1, 1), (2, 1);
insert into bx values (2), (4);
