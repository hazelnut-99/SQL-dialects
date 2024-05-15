select a, b, ntile(3) over (partition by a order by b) from(select intDiv(number,10) as a, number%10 as b from numbers(20));
