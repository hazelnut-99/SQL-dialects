select
    number,
    fIrSt_VaLue(number) over w,
    lAsT_vAlUe(number) over w
from numbers(10)
window w as (order by number range between 1 preceding and 1 following)
order by number
;
