DROP DICTIONARY IF EXISTS regexp_dict1;
DROP TABLE IF EXISTS regexp_dictionary_source_table;
CREATE TABLE regexp_dictionary_source_table
(
    id UInt64,
    parent_id UInt64,
    regexp String,
    keys   Array(String),
    values Array(String),
) ENGINE=TinyLog;
DROP table IF EXISTS needle_table;
CREATE TABLE needle_table
(
    key String
)
ENGINE=TinyLog;
