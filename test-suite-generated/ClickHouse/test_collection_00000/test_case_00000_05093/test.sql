SELECT
d, dt, dtm
FROM generateRandom('d Date, dt DateTime(\'UTC\'), dtm DateTime(\'UTC\')', 1, 10, 10)
LIMIT 10;
