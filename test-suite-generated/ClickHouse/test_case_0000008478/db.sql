DROP TABLE IF EXISTS 02417_test SYNC;
CREATE TABLE 02417_test (key UInt64, value UInt64) Engine=KeeperMap('/' || currentDatabase() || '/test2417') PRIMARY KEY(key);
INSERT INTO 02417_test VALUES (1, 11);
CREATE TABLE 02417_test_another (key UInt64, value UInt64) Engine=KeeperMap('/' || currentDatabase() || '/test2417') PRIMARY KEY(key);
INSERT INTO 02417_test_another VALUES (2, 22);
DROP TABLE 02417_test SYNC;
