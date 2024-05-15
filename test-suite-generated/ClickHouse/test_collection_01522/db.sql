with number + 1 as x select intDiv(number, 3) as y, sum(x + y) over (partition by y order by x rows unbounded preceding) from numbers(7);
