SELECT *
FROM
(
    SELECT
        toUInt64(time) AS time,
        toHour(03038_table.time)
    FROM 03038_table
)
ORDER BY time ASC;
