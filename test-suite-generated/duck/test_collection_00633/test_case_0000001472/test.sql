select * from test order by cast(i % 1000 as varchar), i % 100, cast(i % 10 as varchar), i;
