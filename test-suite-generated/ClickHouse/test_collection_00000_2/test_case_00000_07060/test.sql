select groupArray(number) over (rows unbounded preceding) from numbers(3);
