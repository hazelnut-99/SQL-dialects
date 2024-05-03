SELECT
    round(categoricalInformationValue(x.1, x.2)[1], 6),
    round((2 / 2 - 2 / 3) * (log(2 / 2) - log(2 / 3)), 6)
FROM (
    SELECT
        arrayJoin([(0, 0), (1, 0), (1, 0), (1, 1), (1, 1)]) as x
);
