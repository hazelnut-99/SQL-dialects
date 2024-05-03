SELECT id, yago
FROM ( SELECT item_id AS id, arrayJoin([111, 222, 333]) FROM t GROUP BY id WITH TOTALS ORDER BY id ) AS ll
FULL OUTER JOIN ( SELECT item_id AS id, arrayJoin([111, 222, 333, 444]), SUM(price_sold) AS yago FROM t GROUP BY id WITH TOTALS ORDER BY id ) AS rr
USING (id);
