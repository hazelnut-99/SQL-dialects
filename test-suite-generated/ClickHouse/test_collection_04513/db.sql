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
WITH
    a AS ( SELECT 0 AS key, 'a' AS acol ),
    b AS ( SELECT 2 AS key )
SELECT a.key
FROM b
LEFT JOIN a ON 1
LEFT JOIN a AS a1 ON 1
;
WITH
    a AS ( SELECT 0 AS key, 'a' AS acol ),
    b AS ( SELECT 2 AS key )
SELECT a.acol, a1.acol
FROM b
LEFT JOIN a ON a.key = b.key
LEFT JOIN a AS a1 ON a1.key = a.key
;
