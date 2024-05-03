DROP TABLE IF EXISTS test_collate;
DROP TABLE IF EXISTS test_collate_null;
CREATE TABLE test_collate (x UInt32, s LowCardinality(String)) ENGINE=Memory();
CREATE TABLE test_collate_null (x UInt32, s LowCardinality(Nullable(String))) ENGINE=Memory();
INSERT INTO test_collate VALUES (1, 'Ё'), (1, 'ё'), (1, 'а'), (2, 'А'), (2, 'я'), (2, 'Я');
INSERT INTO test_collate_null VALUES (1, 'Ё'), (1, 'ё'), (1, 'а'), (2, 'А'), (2, 'я'), (2, 'Я'), (1, null), (2, null);
