DROP TABLE IF EXISTS table_map;
CREATE TABLE table_map (id UInt32, col Map(String, UInt64)) engine = MergeTree() ORDER BY tuple();
INSERT INTO table_map SELECT number, map('key1', number, 'key2', number * 2) FROM numbers(1111, 3);
INSERT INTO table_map SELECT number, map('key3', number, 'key2', number + 1, 'key4', number + 2) FROM numbers(100, 4);
