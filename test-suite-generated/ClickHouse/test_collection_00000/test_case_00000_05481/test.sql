select * from (select * from numbers(2) union all select * from numbers(3) union all select * from numbers(1)) order by number;
