select
    number,
    count(*) over (partition by p order by number),
    count(*) over (partition by p order by number, o),
    count(*) over (),
    count(*) over (order by number),
    count(*) over (order by o),
    count(*) over (order by o, number),
    count(*) over (order by number, o),
    count(*) over (partition by p order by o, number),
    count(*) over (partition by p),
    count(*) over (partition by p order by o),
    count(*) over (partition by p, o order by number)
from
    (select number, intDiv(number, 3) p, mod(number, 5) o
        from numbers(16)) t
order by number
;
