DROP TABLE IF EXISTS test_00818;
CREATE TABLE test_00818 (field String, not_field String) ENGINE = Memory;
INSERT INTO test_00818 (field, not_field) VALUES ('123', '456');
