DROP TABLE IF EXISTS t_str;
CREATE TABLE t_str
(
    `creation_time` String
)
ENGINE = MergeTree
PARTITION BY creation_time
ORDER BY creation_time;
insert into t_str values ('2020-02-02');
