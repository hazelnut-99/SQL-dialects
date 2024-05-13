select
    anyOrNull(number)
        over (order by number rows between 1 preceding and 1 preceding),
    anyOrNull(number)
        over (order by number rows between 1 following and 1 following)
from numbers(5);
