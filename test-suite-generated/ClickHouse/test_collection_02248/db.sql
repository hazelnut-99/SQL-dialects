DROP TABLE IF EXISTS t_async_insert_02193_1;
CREATE TABLE t_async_insert_02193_1 (id UInt32, s String) ENGINE = Memory;
INSERT INTO t_async_insert_02193_1 VALUES (3, 'ccc');
INSERT INTO t_async_insert_02193_1 FORMAT JSONEachRow {"id": 4, "s": "ddd"};
