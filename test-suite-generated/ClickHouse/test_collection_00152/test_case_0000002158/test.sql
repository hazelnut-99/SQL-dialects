select * from (select tuple(materialize(0)) as a union all select tuple(0) as a) order by a;
