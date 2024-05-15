select * from (select tuple(1) as a union all select tuple(2) as a) order by a;
