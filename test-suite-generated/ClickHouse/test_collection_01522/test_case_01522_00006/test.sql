select
    count() over (partition by intDiv(number, 3)
        rows between 100 following and unbounded following),
    count() over (partition by intDiv(number, 3)
        rows between current row and 100 following)
from numbers(10);
