DROP TABLE IF EXISTS 02183_dictionary_test_table;
CREATE TABLE 02183_dictionary_test_table (id UInt64) ENGINE=TinyLog;
INSERT INTO 02183_dictionary_test_table VALUES (0), (1);
DROP DICTIONARY IF EXISTS 02183_flat_dictionary;
CREATE DICTIONARY 02183_flat_dictionary
(
    id UInt64
)
PRIMARY KEY id
LAYOUT(FLAT())
SOURCE(CLICKHOUSE(TABLE '02183_dictionary_test_table'))
LIFETIME(0);
