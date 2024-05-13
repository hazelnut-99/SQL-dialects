select * from (　( select *, count() over () cnt from　( select * from numbers(10000000) )　)　) order by number limit 3　;
