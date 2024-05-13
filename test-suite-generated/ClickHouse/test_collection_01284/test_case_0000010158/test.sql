SELECT
    categoricalInformationValue(x.1, x.2, x.3)
FROM (
    SELECT
        arrayJoin([(1, 0, 0), (1, 0, 0), (1, 0, 1), (0, 1, 0), (0, 1, 0), (0, 1, 1)]) as x
);
