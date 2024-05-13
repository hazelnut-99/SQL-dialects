SELECT *
FROM
(
    WITH
        assumeNotNull((
            SELECT 0.9
        )) AS TUNING,
        ELEMENT_QUERY AS
        (
            SELECT quantiles(TUNING)(1)
        )
    SELECT *
    FROM ELEMENT_QUERY
);
