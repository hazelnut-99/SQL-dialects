DROP TABLE IF EXISTS format_nested;
CREATE TABLE format_nested(attrs Nested(k String, v String)) ENGINE = MergeTree ORDER BY tuple();
INSERT INTO format_nested VALUES (['foo', 'bar'], ['qaz', 'qux']);
DROP TABLE format_nested;
