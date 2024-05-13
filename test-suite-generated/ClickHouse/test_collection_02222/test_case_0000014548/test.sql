SELECT
    number,
    nth_value(toNullable(number), 1) OVER w as firstValue,
    nth_value(toNullable(number), 3) OVER w as thridValue
FROM numbers(5)
WINDOW w AS (ORDER BY number ASC)
;
