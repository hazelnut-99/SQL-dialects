select max(base), max(referenced), sum(refined), sum(unrefined) from (
    select
    	row_number() over w AS base,
    	row_number() over (w) as referenced,
    	sum(i % 4) over (w rows between 1 preceding and 1 following) AS refined,
    	sum(i % 4) over (rows between 1 preceding and 1 following) AS unrefined
    from integers
    WINDOW w AS (partition by i // 4 order by i % 4)
) q;
