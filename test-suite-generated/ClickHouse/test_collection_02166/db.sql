DROP TABLE IF EXISTS 02155_test_table;
CREATE TABLE 02155_test_table
(
    id UInt64,
    value String
) ENGINE=TinyLog;
INSERT INTO 02155_test_table VALUES (0, 'Value');
DROP DICTIONARY IF EXISTS 02155_test_dictionary;
CREATE DICTIONARY 02155_test_dictionary
(
    id UInt64,
    value String
)
PRIMARY KEY id
SOURCE(CLICKHOUSE(TABLE '02155_test_table'))
LAYOUT(DIRECT());
ALTER TABLE 02155_test_dictionary MODIFY COMMENT '02155_test_dictionary_comment_0';
