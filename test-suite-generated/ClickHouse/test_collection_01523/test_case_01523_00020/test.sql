select number, count() over (w1 rows unbounded preceding) from numbers(10)
window
    w0 as (partition by intDiv(number, 5) as p),
    w1 as (w0 order by mod(number, 3) as o, number)
order by p, o, number
;
