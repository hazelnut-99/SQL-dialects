drop table if exists trunc;
create table trunc (n int, primary key n) partition by n % 10;
insert into trunc select * from numbers(20);
alter table trunc detach partition all;
alter table trunc attach partition id '0';
alter table trunc attach partition id '1';
alter table trunc attach partition id '2';
alter table trunc attach partition id '3';
truncate trunc;
