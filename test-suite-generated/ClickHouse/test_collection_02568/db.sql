DROP TABLE IF EXISTS test_aggregation;
CREATE TABLE test_aggregation (x Array(Int)) ENGINE=TinyLog;
INSERT INTO test_aggregation VALUES ([1,2,3,4]), ([]), ([1,2,3]);
DROP TABLE test_aggregation;
CREATE TABLE test_aggregation (x Array(Decimal64(8))) ENGINE=TinyLog;
INSERT INTO test_aggregation VALUES ([1,2,3,4]), ([]), ([1,2,3]);
