select * from (select * from numbers(3) union all select * from numbers(1) union all select * from numbers(2)) order by number;
