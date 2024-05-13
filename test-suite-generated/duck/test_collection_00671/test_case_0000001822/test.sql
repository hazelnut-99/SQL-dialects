SELECT id, regexp_replace(date, 'Sales [(]([0-9]+)/([0-9]+)/([0-9]+)[)]', '\3-\1-\2')::DATE AS date, sales
FROM
	(UNPIVOT t1 ON COLUMNS('Sales.*') INTO NAME date VALUE sales)
ORDER BY ALL;
