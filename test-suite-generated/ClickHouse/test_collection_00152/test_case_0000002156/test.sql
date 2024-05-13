select * from (select tuple(1) as a union all select tuple(1) as a) order by a;
