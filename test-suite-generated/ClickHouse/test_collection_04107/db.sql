DROP TABLE IF EXISTS t_async_inserts_flush;
CREATE TABLE t_async_inserts_flush (a UInt64) ENGINE = Memory;
INSERT INTO t_async_inserts_flush VALUES (1) (2);
INSERT INTO t_async_inserts_flush FORMAT JSONEachRow {"a": 10} {"a": 20};
