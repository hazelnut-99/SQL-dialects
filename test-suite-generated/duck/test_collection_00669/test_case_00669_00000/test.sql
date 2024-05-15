SELECT id, regexp_replace(date, 'Sales [(]([0-9]+)/([0-9]+)/([0-9]+)[)]', '\3-\1-\2')::DATE AS date, sales
FROM t1
    UNPIVOT (sales FOR date IN ("Sales (05/19/2020)", "Sales (06/03/2020)", "Sales (10/23/2020)"))
 ORDER BY ALL;
