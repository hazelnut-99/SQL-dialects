select x, min(x) over w, max(x) over w, count(x) over w
from (
    select toInt8(multiIf(
        mod(number, 3) == 0, toInt64(intDiv(number, 3)),
        mod(number, 3) == 1, toInt64(127 - intDiv(number, 3)),
        toInt64(-128 + intDiv(number, 3)))) x
    from numbers(15)
)
window w as (order by x range between 1 preceding and 2 following)
order by x;
