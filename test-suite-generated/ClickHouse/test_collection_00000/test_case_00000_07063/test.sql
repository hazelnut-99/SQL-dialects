select distinct sum(0) over (rows unbounded preceding) from numbers(2);
