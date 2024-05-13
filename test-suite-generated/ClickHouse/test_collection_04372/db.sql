DROP TABLE IF EXISTS test_apply_deleted_mask;
CREATE TABLE test_apply_deleted_mask(id Int64, value String) ENGINE = MergeTree ORDER BY id;
INSERT INTO test_apply_deleted_mask SELECT number, number::String FROM numbers(5);
DELETE FROM test_apply_deleted_mask WHERE id % 2 = 0;
