DROP TABLE IF EXISTS test_alter_attach_01901S;
DROP TABLE IF EXISTS test_alter_attach_01901D;
CREATE TABLE test_alter_attach_01901S (A Int64, D date) ENGINE = MergeTree PARTITION BY D ORDER BY A;
INSERT INTO test_alter_attach_01901S VALUES (1, '2020-01-01');
