DROP TABLE IF EXISTS ddl_dictonary_test_source;
CREATE TABLE ddl_dictonary_test_source
(
   id UInt64,
   value UInt64
)
ENGINE = TinyLog;
INSERT INTO ddl_dictonary_test_source VALUES (0, 0);
INSERT INTO ddl_dictonary_test_source VALUES (1, 1);
DROP DICTIONARY IF EXISTS ddl_dictionary_test;
CREATE DICTIONARY ddl_dictionary_test
(
   id UInt64,
   value UInt64 DEFAULT 0
)
PRIMARY KEY id
SOURCE(CLICKHOUSE(HOST 'localhost' PORT tcpPort() USER 'default' TABLE 'ddl_dictonary_test_source'))
LAYOUT(DIRECT());
