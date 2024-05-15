select * from test order by cast(i + 1000000000000 as varchar) nulls first;
