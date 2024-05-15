select *
from (
    select lag(i, -1) over () as negative, lead(i, 1) over () as positive
    from generate_series(0, 10, 1) tbl(i)
    ) w
where negative <> positive;
