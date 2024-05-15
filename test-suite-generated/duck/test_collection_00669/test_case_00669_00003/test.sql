SELECT id, regexp_replace(date, 'Sales [(]([0-9]+)/([0-9]+)/([0-9]+)[)]', '\3-\1-\2')::DATE AS date, sales FROM t1
    UNPIVOT (Sales FOR Date IN (COLUMNS('Sales.*')))
 ORDER BY ALL;
