DROP TABLE IF EXISTS test_collate;
CREATE TABLE test_collate (x UInt32, s Nullable(String)) ENGINE=Memory();
INSERT INTO test_collate VALUES (1, 'Ё'), (1, 'ё'), (1, 'а'), (1, null), (2, 'А'), (2, 'я'), (2, 'Я'), (2, null);
