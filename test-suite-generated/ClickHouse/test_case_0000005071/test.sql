SELECT id, yago, recent
FROM (
    SELECT item_id AS id, SUM(price_sold) AS recent
    FROM t WHERE (date BETWEEN '2019-12-16' AND '2020-03-08')
    GROUP BY id WITH TOTALS
    ORDER BY id
) ll
FULL JOIN
(
    SELECT item_id AS id, SUM(price_sold) AS yago
    FROM t WHERE (date BETWEEN '2018-12-17' AND '2019-03-10')
    GROUP BY id WITH TOTALS
    ORDER BY id
) rr
USING (id);
