SELECT
    value,
    time,
    round(exp_smooth, 3),
    bar(exp_smooth, 0, 1, 50) AS bar
FROM
(
    SELECT
        (number % 5) = 0 AS value,
        number AS time,
        exponentialTimeDecayedMax(1)(value, time) OVER (ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS exp_smooth
    FROM numbers(50)
);
