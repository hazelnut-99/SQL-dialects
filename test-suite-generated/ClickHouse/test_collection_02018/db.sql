DROP TABLE IF EXISTS t_array_index;
CREATE TABLE t_array_index (n Nested(key String, value String))
ENGINE = MergeTree ORDER BY n.key;
INSERT INTO t_array_index VALUES (['a', 'b'], ['c', 'd']);
