SELECT
    uniq(user_id) AS users,
    uniqIf(order_id, notEmpty(order_id)) AS orders
FROM
(
    SELECT * FROM users
) t1 ALL LEFT JOIN (
    SELECT * FROM orders
) t2 USING (user_id);
