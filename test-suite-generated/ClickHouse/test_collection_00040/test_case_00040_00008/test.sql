SELECT round(abs(res1 - res2), 6) FROM
(
SELECT
    varPopStable(x_value) AS res1,
    (sum(x_value * x_value) - ((sum(x_value) * sum(x_value)) / count())) / count() AS res2
FROM series
);
