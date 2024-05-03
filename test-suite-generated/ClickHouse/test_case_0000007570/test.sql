SELECT
  toTypeName(i)
FROM generateRandom('i Tuple(Int32, Int64)')
LIMIT 1;
