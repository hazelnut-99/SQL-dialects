SELECT x, count(), countIf(x IS NULL) FROM t_nullable_keys_1 GROUP BY x ORDER BY x;
