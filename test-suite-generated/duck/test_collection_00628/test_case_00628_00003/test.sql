select * from test order by cast(i % 100 + 1000000000000 as varchar), i % 10, cast(i + 1000000000000 as varchar) nulls first;
