drop table if exists X;
drop table if exists Y;
create table X (id Int32, x_name String) engine Memory;
create table Y (id Int32, y_name String) engine Memory;
insert into X (id, x_name) values (1, 'A'), (2, 'B'), (2, 'C'), (3, 'D'), (4, 'E'), (4, 'F'), (5, 'G'), (8, 'H'), (9, 'I');
insert into Y (id, y_name) values (1, 'a'), (1, 'b'), (2, 'c'), (3, 'd'), (3, 'e'), (4, 'f'), (6, 'g'), (7, 'h'), (9, 'i');
