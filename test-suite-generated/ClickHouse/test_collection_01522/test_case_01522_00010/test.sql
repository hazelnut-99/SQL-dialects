select x, min(x) over w, max(x) over w, count(x) over w
from (
    select toUInt8(if(mod(number, 2),
        toInt64(255 - intDiv(number, 2)),
        toInt64(intDiv(number, 2)))) x
    from numbers(10)
)
window w as (order by x range between 1 preceding and 2 following)
order by x;
