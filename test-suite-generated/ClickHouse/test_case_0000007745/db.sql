DROP TABLE IF EXISTS test_null_as_default;
CREATE TABLE test_null_as_default (a String DEFAULT 'WORLD') ENGINE = Memory;
INSERT INTO test_null_as_default SELECT 'HELLO' UNION ALL SELECT NULL;
INSERT INTO test_null_as_default SELECT NULL;
DROP TABLE IF EXISTS test_null_as_default;
CREATE TABLE test_null_as_default (a String DEFAULT 'WORLD', b String DEFAULT 'PEOPLE') ENGINE = Memory;
INSERT INTO test_null_as_default(a) SELECT 'HELLO' UNION ALL SELECT NULL;
