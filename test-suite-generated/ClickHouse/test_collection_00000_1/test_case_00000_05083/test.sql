SELECT
  toTypeName(i)
FROM generateRandom('i Enum8(\'hello\' = 1, \'world\' = 5)')
LIMIT 1;
