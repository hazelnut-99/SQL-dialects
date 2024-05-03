SELECT uid, retention(date = '2018-08-06', date = '2018-08-07') AS r FROM retention_test WHERE date IN ('2018-08-06', '2018-08-07') GROUP BY uid ORDER BY uid LIMIT 5;
