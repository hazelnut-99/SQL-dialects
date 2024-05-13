CREATE TABLE IF NOT EXISTS table_with_dot_column (date Date, regular_column String, `other_column.2` String) ENGINE = MergeTree() ORDER BY date;
INSERT INTO table_with_dot_column SELECT '2020-01-01', 'Hello', 'World';
INSERT INTO table_with_dot_column SELECT toDate(now() + 48*3600), 'Hello', 'World';
