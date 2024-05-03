SELECT *
FROM (SELECT * FROM t GROUP BY item_id, price_sold, date WITH TOTALS ORDER BY item_id, price_sold, date) l
LEFT JOIN (SELECT * FROM t GROUP BY item_id, price_sold, date WITH TOTALS ORDER BY item_id, price_sold, date ) r
ON l.item_id = r.item_id;
