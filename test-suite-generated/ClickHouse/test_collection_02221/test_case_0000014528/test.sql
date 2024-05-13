select sum(number) over w1, sum(number) over w2
from numbers(10)
window
    w1 as (rows unbounded preceding),
    w2 as (partition by intDiv(number, 3) as value order by number rows unbounded preceding)
;
