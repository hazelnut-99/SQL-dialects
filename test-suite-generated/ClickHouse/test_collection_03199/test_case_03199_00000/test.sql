SELECT
  *,
  count() OVER () AS c,
  toString(number) as str
FROM numbers(10)
ORDER BY str;
