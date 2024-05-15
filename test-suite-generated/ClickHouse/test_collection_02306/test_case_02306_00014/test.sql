SELECT rdb.key % 2, sum(k), max(value2) FROM t2 INNER JOIN rdb ON rdb.key == t2.k GROUP BY (rdb.key % 2) WITH TOTALS;
