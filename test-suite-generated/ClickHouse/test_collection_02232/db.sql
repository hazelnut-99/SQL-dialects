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
