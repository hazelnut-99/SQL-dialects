DROP TABLE IF EXISTS table_a;
DROP TABLE IF EXISTS table_b;
CREATE TABLE table_a (
    event_id UInt64,
    something String,
    other Nullable(String)
) ENGINE = MergeTree ORDER BY (event_id);
CREATE TABLE table_b (
    event_id UInt64,
    something Nullable(String),
    other String
) ENGINE = MergeTree ORDER BY (event_id);
INSERT INTO table_a VALUES (1, 'foo', 'foo'), (2, 'foo', 'foo'), (3, 'bar', 'bar');
INSERT INTO table_b VALUES (1, 'bar', 'bar'), (2, 'bar', 'bar'), (3, 'test', 'test'), (4, NULL, '');
