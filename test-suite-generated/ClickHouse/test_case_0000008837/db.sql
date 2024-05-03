DROP TABLE IF EXISTS 02186_range_dictionary_source_table;
CREATE TABLE 02186_range_dictionary_source_table
(
    id UInt64,
    start Date,
    end Date,
    value String
)
Engine = TinyLog;
INSERT INTO 02186_range_dictionary_source_table VALUES (1, '2020-01-01', '2100-01-01', 'Value0');
INSERT INTO 02186_range_dictionary_source_table VALUES (1, '2020-01-02', '2100-01-01', 'Value1');
INSERT INTO 02186_range_dictionary_source_table VALUES (1, '2020-01-03', '2100-01-01', 'Value2');
DROP DICTIONARY IF EXISTS 02186_range_dictionary;
CREATE DICTIONARY 02186_range_dictionary
(
    id UInt64,
    start Date,
    end Date,
    value String
)
PRIMARY KEY id
SOURCE(CLICKHOUSE(TABLE '02186_range_dictionary_source_table'))
LAYOUT(RANGE_HASHED(range_lookup_strategy 'min'))
RANGE(MIN start MAX end)
LIFETIME(0);
