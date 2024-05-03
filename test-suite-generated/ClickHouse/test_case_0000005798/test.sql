SELECT *
FROM
(
    SELECT
        product_name,
        group_name,
        price,
        min(price) OVER (PARTITION BY group_name) AS min_price,
        dense_rank() OVER (PARTITION BY group_name ORDER BY price ASC) AS r
    FROM products
    INNER JOIN product_groups USING (group_id)
) AS t
WHERE min_price > 160
ORDER BY
    group_name ASC,
    r ASC,
    product_name ASC;
