SELECT  color, timestamp
FROM order_test1
GROUP BY color, timestamp
ORDER BY color ASC, timestamp DESC;
