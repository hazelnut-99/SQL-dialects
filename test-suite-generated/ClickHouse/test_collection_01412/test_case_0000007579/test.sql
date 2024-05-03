SELECT
  toTypeName(i)
FROM generateRandom('i Tuple(Int32, Array(Int64))')
LIMIT 1;
