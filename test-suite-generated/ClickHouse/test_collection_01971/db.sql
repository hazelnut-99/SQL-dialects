DROP TABLE IF EXISTS dictionary_array_source_table;
CREATE TABLE dictionary_array_source_table
(
    id UInt64,
    array_value Array(Int64)
) ENGINE=TinyLog;
INSERT INTO dictionary_array_source_table VALUES (0, [0, 1, 2]);
DROP DICTIONARY IF EXISTS flat_dictionary;
CREATE DICTIONARY flat_dictionary
(
    id UInt64,
    array_value Array(Int64) DEFAULT [1,2,3]
)
PRIMARY KEY id
SOURCE(CLICKHOUSE(HOST 'localhost' PORT tcpPort() TABLE 'dictionary_array_source_table'))
LIFETIME(MIN 1 MAX 1000)
LAYOUT(FLAT());
