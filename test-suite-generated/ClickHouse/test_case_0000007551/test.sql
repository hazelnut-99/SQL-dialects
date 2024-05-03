SELECT
  i
FROM generateRandom('i Array(Nullable(Enum8(\'hello\' = 1, \'world\' = 5)))', 1, 10, 10)
LIMIT 10;
