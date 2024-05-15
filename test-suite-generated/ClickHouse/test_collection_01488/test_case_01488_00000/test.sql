select count() over (rows between 1 + 1 preceding and 1 + 1 following) from numbers(10);
