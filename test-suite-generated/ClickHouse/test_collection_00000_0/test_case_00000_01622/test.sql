select * from (select tuple(range(1)[1]) as a union all select tuple(0) as a) order by a;
