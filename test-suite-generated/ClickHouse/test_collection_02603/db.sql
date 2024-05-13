DROP DATABASE IF EXISTS 01785_db;
CREATE DATABASE 01785_db;
DROP TABLE IF EXISTS 01785_db.simple_key_source_table;
CREATE TABLE 01785_db.simple_key_source_table
(
    id UInt64,
    value String
) ENGINE = TinyLog();
INSERT INTO 01785_db.simple_key_source_table VALUES (1, 'First');
INSERT INTO 01785_db.simple_key_source_table VALUES (1, 'First');
DROP DICTIONARY IF EXISTS 01785_db.simple_key_flat_dictionary;
CREATE DICTIONARY 01785_db.simple_key_flat_dictionary
(
    id UInt64,
    value String
)
PRIMARY KEY id
SOURCE(CLICKHOUSE(HOST 'localhost' PORT tcpPort() DB '01785_db' TABLE 'simple_key_source_table'))
LAYOUT(FLAT())
LIFETIME(MIN 0 MAX 1000);
