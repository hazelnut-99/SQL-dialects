SELECT i, z
FROM wide_nulls, limits_nulls
WHERE z BETWEEN c8 AND c9
ORDER BY 1, 2;
