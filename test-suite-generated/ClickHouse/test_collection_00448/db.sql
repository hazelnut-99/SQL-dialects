DROP TABLE IF EXISTS concat_saf_test;
CREATE TABLE concat_saf_test(x SimpleAggregateFunction(max, Int32)) ENGINE=MergeTree ORDER BY tuple();
INSERT INTO concat_saf_test VALUES (42);
INSERT INTO concat_saf_test SELECT max(number) FROM numbers(5);
DROP TABLE concat_saf_test;
DROP TABLE IF EXISTS concat_nested_test;
CREATE TABLE concat_nested_test(attrs Nested(k String, v String)) ENGINE = MergeTree ORDER BY tuple();
INSERT INTO concat_nested_test VALUES (['foo', 'bar'], ['qaz', 'qux']);
DROP TABLE concat_nested_test;
