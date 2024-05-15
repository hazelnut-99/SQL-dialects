with d1 as (
    select
        1 as a,
        2 as b
),
d2 as (
    select
        1 as a,
        3 as c
),
joined as (
    select
        d1.*,
        d2.c
    from d1
    inner join d2
        on (d1.a = d2.a)
)
select c
from joined;
