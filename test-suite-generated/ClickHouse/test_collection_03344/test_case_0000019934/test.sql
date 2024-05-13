select * from (　( select *, count() over () cnt from　( select * from numbers(10000000) )　)　)  limit 3　;
