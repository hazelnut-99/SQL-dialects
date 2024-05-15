SELECT id, regexp_replace(date, 'Sales [(]([0-9]+)/([0-9]+)/([0-9]+)[)]', '\3-\1-\2')::DATE AS date, sales
FROM
    (UNPIVOT t1 ON "Sales (05/19/2020)", "Sales (06/03/2020)", "Sales (10/23/2020)" INTO NAME date VALUE sales)
 ORDER BY ALL;
