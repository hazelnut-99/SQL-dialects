DROP TABLE IF EXISTS 02751_query_log_test_partitions;
CREATE TABLE 02751_query_log_test_partitions (a Int64, b Int64) ENGINE = MergeTree PARTITION BY a ORDER BY b;
INSERT INTO 02751_query_log_test_partitions SELECT number, number FROM numbers(10);
