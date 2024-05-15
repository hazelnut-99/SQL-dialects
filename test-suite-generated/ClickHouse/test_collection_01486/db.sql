create table values_01564(
    a int,
    constraint c1 check a < 10) engine Memory;
insert into values_01564 values (1);
