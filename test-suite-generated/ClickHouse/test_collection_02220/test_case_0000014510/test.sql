select number, quantileExact(number) over (partition by intDiv(number, 3) AS value order by number rows unbounded preceding) from numbers(10);
