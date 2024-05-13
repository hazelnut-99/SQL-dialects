select sum(any(number)) over (rows unbounded preceding) from numbers(1);
