SELECT sum(r[1]) as r1, sum(r[2]) as r2 FROM (SELECT uid, retention(date = '2018-08-06', date = '2018-08-08') AS r FROM retention_test WHERE date IN ('2018-08-06', '2018-08-08') GROUP BY uid);
