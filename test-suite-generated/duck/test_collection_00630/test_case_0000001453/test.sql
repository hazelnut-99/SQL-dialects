select * from test order by cast(i % 1000 as varchar), i % 100, i % 10, cast(i as varchar);
