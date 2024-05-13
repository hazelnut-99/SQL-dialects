DROP TABLE IF EXISTS test_mv;
DROP TABLE IF EXISTS test;
DROP TABLE IF EXISTS test_input;
CREATE TABLE test_input(id Int32) ENGINE=MergeTree() order by id;
CREATE TABLE test(`id` Int32, `pv` AggregateFunction(sum, Int32)) ENGINE = AggregatingMergeTree() ORDER BY id;
INSERT INTO test_input SELECT toInt32(number % 1000) AS id FROM numbers(10);
