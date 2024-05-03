SELECT
  toTypeName(i)
FROM generateRandom('i Nullable(String)', 1)
LIMIT 1;
