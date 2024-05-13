SELECT x, count(), countIf(x IS NULL) FROM t_nullable_keys_2 GROUP BY x ORDER BY x;
