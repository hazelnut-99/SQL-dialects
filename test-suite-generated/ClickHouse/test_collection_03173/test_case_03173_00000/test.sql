SELECT x, count(), countIf(x IS NULL) FROM t_nullable_keys_3 GROUP BY x ORDER BY x;
