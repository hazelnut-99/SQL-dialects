select * from test order by cast(i % 1000 + 1000000000000 as varchar), i % 100, i % 10, cast(i + 1000000000000 as varchar);
