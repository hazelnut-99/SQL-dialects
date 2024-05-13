DROP TABLE IF EXISTS rdb;
DROP TABLE IF EXISTS t1;
DROP TABLE IF EXISTS t2;
CREATE TABLE rdb (key UInt32, value Array(UInt32), value2 String) ENGINE = EmbeddedRocksDB PRIMARY KEY (key);
INSERT INTO rdb
    SELECT
        toUInt32(sipHash64(number) % 10) as key,
        [key, key+1] as value,
        ('val2' || toString(key)) as value2
    FROM numbers_mt(10);
CREATE TABLE t1 (k UInt32) ENGINE = TinyLog;
INSERT INTO t1 SELECT number as k from numbers_mt(10);
CREATE TABLE t2 (k UInt16) ENGINE = TinyLog;
INSERT INTO t2 SELECT number as k from numbers_mt(10);
