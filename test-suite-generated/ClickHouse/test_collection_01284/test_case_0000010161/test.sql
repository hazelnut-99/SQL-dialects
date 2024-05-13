SELECT
    round(categoricalInformationValue(x.1, x.2, x.3)[1], 6),
    round(categoricalInformationValue(x.1, x.2, x.3)[2], 6),
    round((2 / 4 - 1 / 3) * (log(2 / 4) - log(1 / 3)), 6),
    round((2 / 4 - 2 / 3) * (log(2 / 4) - log(2 / 3)), 6)
FROM (
    SELECT
        arrayJoin([(1, 0, 0), (1, 0, 0), (1, 0, 1), (0, 1, 0), (0, 1, 0), (0, 1, 1), (0, 1, 1)]) as x
    FROM
        numbers(1000)
);
