select * from test order by cast(i % 10 + 1000000000000 as varchar), i;
