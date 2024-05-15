select min(number) over (partition by p)  from (select number, intDiv(number, 3) p from numbers(10));
