select number, count() over (partition by intDiv(number, 3) order by number rows unbounded preceding) from numbers(10);
