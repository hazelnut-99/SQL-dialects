SELECT round(abs(res1 - res2), 6) FROM
(
SELECT
    kurtPop(x_value) AS res1,
    (
        sum(x_value * x_value * x_value * x_value) / count()
        - 4 * sum(x_value * x_value * x_value) / count() * sum(x_value) / count()
        + 6 * sum(x_value * x_value) / count() * sum(x_value) / count() * sum(x_value) / count()
        - 3 * sum(x_value) / count() * sum(x_value) / count() * sum(x_value) / count() * sum(x_value) / count()
    ) / pow((sum(x_value * x_value) - ((sum(x_value) * sum(x_value)) / count())) / count(), 2) AS res2
FROM series
);
