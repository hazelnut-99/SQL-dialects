SELECT item_id
FROM (SELECT item_id FROM t GROUP BY item_id WITH TOTALS) l
INNER JOIN (SELECT item_id FROM t GROUP BY item_id WITH TOTALS ORDER BY item_id) r
USING (item_id);
