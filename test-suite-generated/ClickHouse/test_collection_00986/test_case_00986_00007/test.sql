SELECT id, yago
FROM ( SELECT item_id AS id, arrayJoin(emptyArrayInt32()) FROM t GROUP BY id WITH TOTALS ORDER BY id ) AS ll
FULL OUTER JOIN ( SELECT item_id AS id, SUM(price_sold) AS yago FROM t GROUP BY id ) AS rr
USING (id);
