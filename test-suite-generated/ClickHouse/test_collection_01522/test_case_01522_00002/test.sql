select
    sum(number) over w1,
    sum(number) over (partition by intDiv(number, 3) as value order by number rows unbounded preceding)
from numbers(10)
window
    w1 as (partition by intDiv(number, 3) rows unbounded preceding)
;
