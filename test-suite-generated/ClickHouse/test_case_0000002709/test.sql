SELECT
    categoricalInformationValue(x.1, x.2)
FROM (
    SELECT
        arrayJoin(arrayPopBack([(1, 0)])) as x
);
