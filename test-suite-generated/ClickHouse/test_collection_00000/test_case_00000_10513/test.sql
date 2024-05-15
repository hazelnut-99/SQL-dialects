SELECT groupArray(tuple(value)) OVER ()
FROM (select number value from numbers(10))
ORDER BY value ASC;
