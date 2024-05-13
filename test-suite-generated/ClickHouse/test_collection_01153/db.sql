drop table if exists X;
drop table if exists Y;
create table X (id Int64) Engine = Memory;
create table Y (id Int64) Engine = Memory;
insert into X (id) values (1);
insert into Y (id) values (2);
