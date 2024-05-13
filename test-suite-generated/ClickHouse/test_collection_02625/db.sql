DROP TABLE IF EXISTS dictionary_decimal_source_table;
CREATE TABLE dictionary_decimal_source_table
(
    id UInt64,
    decimal_value Decimal256(5)
) ENGINE = TinyLog;
INSERT INTO dictionary_decimal_source_table VALUES (1, 5.0);
DROP DICTIONARY IF EXISTS flat_dictionary;
CREATE DICTIONARY flat_dictionary
(
    id UInt64,
    decimal_value Decimal256(5)
)
PRIMARY KEY id
SOURCE(CLICKHOUSE(HOST 'localhost' PORT tcpPort() TABLE 'dictionary_decimal_source_table'))
LIFETIME(MIN 1 MAX 1000)
LAYOUT(FLAT());
DROP DICTIONARY IF EXISTS hashed_dictionary;
CREATE DICTIONARY hashed_dictionary
(
    id UInt64,
    decimal_value Decimal256(5)
)
PRIMARY KEY id
SOURCE(CLICKHOUSE(HOST 'localhost' PORT tcpPort() TABLE 'dictionary_decimal_source_table'))
LIFETIME(MIN 1 MAX 1000)
LAYOUT(HASHED());
