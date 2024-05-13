select * from (select count(*) over (rows unbounded preceding) c from numbers(3)) order by c;
