SELECT x, count(), countIf(x IS NULL) FROM t_nullable_keys_5 GROUP BY x ORDER BY x;
