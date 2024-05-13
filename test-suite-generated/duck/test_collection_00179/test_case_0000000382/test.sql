SELECT COUNT(*)
FROM many_values, many_bounds
WHERE val BETWEEN lo AND hi;
