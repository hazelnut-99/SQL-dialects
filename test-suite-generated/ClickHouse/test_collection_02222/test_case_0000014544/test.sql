SELECT
    number,
    lagInFrame(toNullable(number), 1) OVER w,
    lagInFrame(toNullable(number), 2) OVER w,
    lagInFrame(number, 1) OVER w,
    lagInFrame(number, 2) OVER w
FROM numbers(4)
WINDOW w AS (ORDER BY number ASC)
;
