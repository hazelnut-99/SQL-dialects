SELECT round(abs(res1 - res2), 6) FROM
(
SELECT
    varSamp(x_value) AS res1,
    (sum(x_value * x_value) - ((sum(x_value) * sum(x_value)) / count())) / (count() - 1) AS res2
FROM series
);
