create temp table gstest2 (a integer, b integer, c integer, d integer,
                           e integer, f integer, g integer, h integer);
COMMIT;
create table bug_16784(i int, j int);
analyze bug_16784;
insert into bug_16784 select g/10, g from generate_series(1,40) g;
