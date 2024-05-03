DROP TABLE IF EXISTS 02183_dictionary_source_table;
CREATE TABLE 02183_dictionary_source_table
(
    id UInt64,
    value_date Date,
    value_date_32 Date32,
    value_date_time DateTime,
    value_date_time_64 DateTime64
) ENGINE=TinyLog;
INSERT INTO 02183_dictionary_source_table VALUES (0, '2019-05-05', '2019-05-05', '2019-05-05', '2019-05-05');
