SELECT
  (a + 1) AS c,
  Z.c + 1
FROM
  (SELECT 10 a) X
CROSS JOIN
  (SELECT 20 b) Y
CROSS JOIN
  (SELECT 30 c) Z;
