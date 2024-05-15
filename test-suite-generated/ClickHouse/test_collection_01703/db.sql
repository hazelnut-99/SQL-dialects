DROP TABLE IF EXISTS table_map_with_key_integer;
CREATE TABLE table_map_with_key_integer (d DATE, m Map(Int8, Int8))
ENGINE = MergeTree() ORDER BY d;
INSERT INTO table_map_with_key_integer VALUES ('2020-01-01', map(127, 1, 0, 1, -1, 1)) ('2020-01-01', map());
DROP TABLE IF EXISTS table_map_with_key_integer;
CREATE TABLE table_map_with_key_integer (d DATE, m Map(Int32, UInt16))
ENGINE = MergeTree() ORDER BY d;
INSERT INTO table_map_with_key_integer VALUES ('2020-01-01', map(-1, 1, 2147483647, 2, -2147483648, 3));
DROP TABLE IF EXISTS table_map_with_key_integer;
CREATE TABLE table_map_with_key_integer (d DATE, m Map(Date, Int32))
ENGINE = MergeTree() ORDER BY d;
INSERT INTO table_map_with_key_integer VALUES ('2020-01-01', map('2020-01-01', 1, '2020-01-02', 2, '1970-01-02', 3));
DROP TABLE IF EXISTS table_map_with_key_integer;
CREATE TABLE table_map_with_key_integer (d DATE, m Map(UUID, UInt16))
ENGINE = MergeTree() ORDER BY d;
INSERT INTO table_map_with_key_integer VALUES ('2020-01-01', map('00001192-0000-4000-8000-000000000001', 1, '00001192-0000-4000-7000-000000000001', 2));
