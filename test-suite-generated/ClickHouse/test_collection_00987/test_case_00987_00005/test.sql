SELECT *
FROM (SELECT item_id, 'foo' AS key, 1 AS val FROM t GROUP BY item_id WITH TOTALS ORDER BY item_id) l
LEFT JOIN (SELECT item_id, sum(price_sold) AS val FROM t GROUP BY item_id WITH TOTALS ORDER BY item_id ) r
ON l.item_id = r.item_id;
