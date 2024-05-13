DROP TABLE IF EXISTS test_nullable_float_issue7347;
CREATE TABLE test_nullable_float_issue7347 (ne UInt64,test Nullable(Float64)) ENGINE = MergeTree() PRIMARY KEY (ne) ORDER BY (ne);
INSERT INTO test_nullable_float_issue7347 VALUES (1,NULL);
WITH materialize(CAST(NULL, 'Nullable(Float64)')) AS test SELECT test, toTypeName(test), IF(test = 0, 1, 0);
DROP TABLE test_nullable_float_issue7347;
