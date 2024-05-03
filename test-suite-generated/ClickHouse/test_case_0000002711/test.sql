SELECT
    categoricalInformationValue(x.1, x.2)
FROM (
    SELECT
        arrayJoin([(1, 0)]) as x
);
