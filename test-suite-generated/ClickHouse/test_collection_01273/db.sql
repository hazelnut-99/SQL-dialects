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
