SELECT argMaxOrNull(id, timestamp)
FROM
(
    SELECT
        CAST(NULL, 'Nullable(UInt32)') AS id,
        2 AS timestamp
);
