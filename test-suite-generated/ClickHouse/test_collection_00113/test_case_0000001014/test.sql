SELECT round(abs(res1 - res2), 6) FROM
(
SELECT
    stddevPopStable(x_value) AS res1,
    sqrt((sum(x_value * x_value) - ((sum(x_value) * sum(x_value)) / count())) / count()) AS res2
FROM series
);
