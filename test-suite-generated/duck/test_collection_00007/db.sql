create table test as select range i from range(3);
WITH data AS (
    SELECT 1 as a, 2 as b, 3 as c
)
SELECT d FROM data d;
create table main as select 3 test;
create table structs as select {test: 4} main;
