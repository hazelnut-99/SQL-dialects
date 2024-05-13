DROP TABLE IF EXISTS t_async_insert_table_function;
CREATE TABLE t_async_insert_table_function (id UInt32, s String) ENGINE = Memory;
INSERT INTO function remote('127.0.0.1', currentDatabase(), t_async_insert_table_function) values (1, 'aaa') (2, 'bbb');
