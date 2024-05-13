select
    count(*) over (order by toFloat32(number) range 5 preceding),
    count(*) over (order by toFloat64(number) range 5 preceding),
    count(*) over (order by toFloat32(number) range between current row and 5 following),
    count(*) over (order by toFloat64(number) range between current row and 5 following)
from numbers(7)
;
