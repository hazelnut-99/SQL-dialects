SELECT count() FROM
(
    SELECT count()
    FROM numbers(65411)
    GROUP BY if(number < 1, NULL, number)
);
