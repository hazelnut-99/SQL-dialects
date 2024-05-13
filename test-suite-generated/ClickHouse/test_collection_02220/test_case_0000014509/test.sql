select number, avg(number) over (order by number rows unbounded preceding) from numbers(10);
