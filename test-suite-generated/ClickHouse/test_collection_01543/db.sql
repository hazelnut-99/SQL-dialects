drop table if exists trunc;
create table trunc (n int, primary key n) partition by n % 10;
insert into trunc select * from numbers(20);
