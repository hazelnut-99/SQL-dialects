DROP TABLE IF EXISTS x_1;
DROP TABLE IF EXISTS x_2;
DROP TABLE IF EXISTS x;
create table x_1 engine=Log as select * from numbers(10);
create table x_2 engine=Log as select * from numbers(10);
create table x engine=Merge(currentDatabase(), '^x_(1|2)$') as x_1;
