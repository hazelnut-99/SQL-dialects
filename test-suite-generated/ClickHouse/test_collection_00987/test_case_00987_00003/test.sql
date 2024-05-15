SELECT *
FROM (SELECT item_id FROM t) l
RIGHT JOIN (SELECT item_id FROM t GROUP BY item_id WITH TOTALS ORDER BY item_id ) r
ON l.item_id = r.item_id;
