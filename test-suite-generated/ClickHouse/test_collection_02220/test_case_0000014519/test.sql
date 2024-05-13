select sum(any(number) + 1) over (rows unbounded preceding) from numbers(1);
