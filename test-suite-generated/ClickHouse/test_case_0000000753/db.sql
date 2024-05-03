DROP TABLE IF EXISTS 02185_range_dictionary_source_table;
CREATE TABLE 02185_range_dictionary_source_table
(
    id UInt64,
    start Nullable(UInt64),
    end Nullable(UInt64),
    value String
)
ENGINE = TinyLog;
INSERT INTO 02185_range_dictionary_source_table VALUES (0, NULL, 5000, 'Value0'), (0, 5001, 10000, 'Value1'), (0, 10001, NULL, 'Value2');
DROP DICTIONARY IF EXISTS 02185_range_dictionary;
CREATE DICTIONARY 02185_range_dictionary
(
    id UInt64,
    start UInt64,
    end UInt64,
    value String DEFAULT 'DefaultValue'
)
PRIMARY KEY id
SOURCE(CLICKHOUSE(TABLE '02185_range_dictionary_source_table'))
LAYOUT(RANGE_HASHED(convert_null_range_bound_to_open 1))
RANGE(MIN start MAX end)
LIFETIME(0);
