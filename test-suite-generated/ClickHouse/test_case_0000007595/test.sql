SELECT
    hex(i)
FROM generateRandom('i FixedString(4)', 1, 10, 10)
LIMIT 10;
