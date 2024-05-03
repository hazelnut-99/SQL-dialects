SELECT color, toDateTime(timestamp) AS second
FROM order_test1
GROUP BY color, second
ORDER BY color ASC, second DESC;
