SELECT
    dimension_1,
    sum_metric_1,
    sum_metric_2
FROM
(
    SELECT
        dimension_1,
        sum(metric_1) AS sum_metric_1
    FROM foo
    GROUP BY dimension_1
        WITH TOTALS
) AS subquery_1
ALL FULL OUTER JOIN
(
    SELECT
        dimension_1,
        sum(metric_2) AS sum_metric_2
    FROM bar
    GROUP BY dimension_1
        WITH TOTALS
) AS subquery_2 USING (dimension_1)
WHERE sum_metric_2 < 20
ORDER BY dimension_1 ASC;
