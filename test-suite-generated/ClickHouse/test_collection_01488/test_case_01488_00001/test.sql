select number,
    lagInFrame(toNullable(number), 2, null) over w,
    lagInFrame(number, 2, 1) over w
from numbers(10)
window w as (order by number)
;
