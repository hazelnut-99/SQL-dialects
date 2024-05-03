SELECT
    toTypeName(i)
FROM generateRandom('i Array(Nullable(UUID))')
LIMIT 1;
