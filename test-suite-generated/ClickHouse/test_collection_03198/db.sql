DROP TABLE IF EXISTS 03038_table;
CREATE TABLE 03038_table
(
    `time` DateTime
)
ENGINE = MergeTree
ORDER BY time;
WITH subquery AS (
    SELECT
        toUInt64(time) AS time,
        toHour(03038_table.time)
    FROM 03038_table
)
SELECT *
FROM subquery
ORDER BY subquery.time ASC;
