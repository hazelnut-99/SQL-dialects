select * from test order by i % 100, cast(i % 10 as varchar), cast(i as varchar);
