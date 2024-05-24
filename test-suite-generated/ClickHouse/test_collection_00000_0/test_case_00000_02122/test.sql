SELECT k, b
FROM
(
    SELECT number + 1 AS k FROM numbers(10)
) js1
RIGHT JOIN
(
    SELECT nullIf(number, if(number % 2 == 0, number, 0)) AS k, number AS b FROM numbers(10)
) js2 USING (k) ORDER BY k, b;
