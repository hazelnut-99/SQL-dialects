SELECT lhs.i, rhs.i
FROM wide_nulls lhs, wide_nulls rhs
WHERE lhs.c3 < rhs.c0
  AND lhs.c8 IS DISTINCT FROM rhs.c3
ORDER BY 1, 2;
