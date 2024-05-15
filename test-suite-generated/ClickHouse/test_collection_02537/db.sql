DROP TABLE IF EXISTS 02416_rocksdb;
CREATE TABLE 02416_rocksdb (key UInt64, value String, value2 UInt64) Engine=EmbeddedRocksDB PRIMARY KEY(key);
INSERT INTO 02416_rocksdb VALUES (1, 'Some string', 0), (2, 'Some other string', 0), (3, 'random', 0), (4, 'random2', 0);
DELETE FROM 02416_rocksdb WHERE value LIKE 'Some%string';
ALTER TABLE 02416_rocksdb DELETE WHERE key >= 4;
DELETE FROM 02416_rocksdb WHERE 1 = 1;
INSERT INTO 02416_rocksdb VALUES (1, 'String', 10), (2, 'String', 20), (3, 'String', 30), (4, 'String', 40);
ALTER TABLE 02416_rocksdb UPDATE value = 'Another' WHERE key > 2;
