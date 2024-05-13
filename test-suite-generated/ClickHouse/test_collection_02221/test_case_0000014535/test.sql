select
    count(*) over (rows between  current row and current row),
    count(*) over (range between  current row and current row)
from numbers(3);
