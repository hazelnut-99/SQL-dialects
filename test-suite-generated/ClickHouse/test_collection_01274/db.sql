DROP TABLE IF EXISTS mytable_local;
CREATE TABLE mytable_local (
    created          DateTime,
    eventday         Date,
    user_id          UInt32
)
ENGINE = MergeTree()
PARTITION BY toYYYYMM(eventday)
ORDER BY (eventday, user_id);
INSERT INTO mytable_local SELECT
    toDateTime('2020-06-01 00:00:00') + toIntervalMinute(number) AS created,
    toDate(created) AS eventday,
    if((number % 100) > 50, 742522, number % 32141) AS user_id
FROM numbers(100000);
DROP TABLE mytable_local;
DROP TABLE IF EXISTS table_float;
CREATE TABLE table_float
(
    f Float64,
    u UInt32
)
ENGINE = MergeTree
ORDER BY (f, u);
INSERT INTO table_float VALUES (1.2, 1) (1.3, 2) (1.4, 3) (1.5, 4);
