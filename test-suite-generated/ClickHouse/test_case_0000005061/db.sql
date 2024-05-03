DROP TABLE IF EXISTS tab;
CREATE TABLE tab
(
    `machine_id` UInt64,
    `name` String,
    `timestamp` DateTime
)
ENGINE = MergeTree
PARTITION BY toYYYYMM(timestamp)
ORDER BY machine_id;
insert into tab(machine_id, name, timestamp)
select 1, 'a_name', '2022-11-24 12:00:00';
