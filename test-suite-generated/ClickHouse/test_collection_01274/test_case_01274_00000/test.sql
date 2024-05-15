SELECT count()
FROM table_float
WHERE (toUInt64(f) = 1) AND (f >= 1.3) AND (f <= 1.4) AND (u > 0);
