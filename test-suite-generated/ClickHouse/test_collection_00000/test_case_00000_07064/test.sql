select distinct any(number) over (rows unbounded preceding) from numbers(2);
