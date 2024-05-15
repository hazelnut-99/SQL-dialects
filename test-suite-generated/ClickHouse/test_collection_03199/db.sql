WITH
  toString(number) as str
SELECT
  *,
  count() OVER () AS c
FROM numbers(10)
ORDER BY str;
