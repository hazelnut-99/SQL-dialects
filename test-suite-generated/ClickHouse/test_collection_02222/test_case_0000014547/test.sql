select
    number,
    nth_value(number, 1) over w as firstValue,
    nth_value(number, 2) over w as secondValue,
    nth_value(number, 3) over w as thirdValue,
    nth_value(number, 4) over w as fourthValue
from numbers(10)
window w as (order by number range between 1 preceding and 1 following)
order by number
;
