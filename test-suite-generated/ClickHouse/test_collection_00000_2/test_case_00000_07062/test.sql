select count(1) over (rows unbounded preceding), max(number + 1) over () from numbers(3);
