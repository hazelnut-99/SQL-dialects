SELECT 70 = 10 * sum(t1.id) + sum(t2.id) AND count() == 4 FROM t1 JOIN t2 ON toNullable(toLowCardinality(1));
