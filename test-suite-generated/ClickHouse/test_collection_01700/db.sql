DROP TABLE IF EXISTS table_map_with_key_integer;
CREATE TABLE table_map_with_key_integer (d DATE, m Map(Int8, Int8))
ENGINE = MergeTree() ORDER BY d;
INSERT INTO table_map_with_key_integer VALUES ('2020-01-01', map(127, 1, 0, 1, -1, 1)) ('2020-01-01', map());
