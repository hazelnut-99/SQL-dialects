SELECT
  toTypeName(i)
FROM generateRandom('i Array(Nullable(Enum8(\'hello\' = 1, \'world\' = 5)))')
LIMIT 1;
