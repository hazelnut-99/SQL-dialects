DROP TABLE IF EXISTS test_nullable_float_issue7347;
CREATE TABLE test_nullable_float_issue7347 (ne UInt64,test Nullable(Float64)) ENGINE = MergeTree() PRIMARY KEY (ne) ORDER BY (ne);
INSERT INTO test_nullable_float_issue7347 VALUES (1,NULL);
