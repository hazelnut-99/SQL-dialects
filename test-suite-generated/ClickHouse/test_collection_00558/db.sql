drop table if exists fooL;
drop table if exists fooR;
create table fooL (a Int32, v String) engine = Memory;
create table fooR (a Int32, v String) engine = Memory;
insert into fooL select number, 'L'  || toString(number) from numbers(2);
insert into fooL select number, 'LL' || toString(number) from numbers(2);
insert into fooR select number, 'R'  || toString(number) from numbers(2);
