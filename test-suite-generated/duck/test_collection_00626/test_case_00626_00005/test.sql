select * from test order by i % 100, cast(i % 10 + 1000000000000 as varchar), cast(i + 1000000000000 as varchar);
