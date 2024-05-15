select * from test order by cast(i % 100 as varchar), i % 10, cast(i as varchar) nulls first;
