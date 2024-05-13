DROP TABLE IF EXISTS alter_enum_array;
CREATE TABLE alter_enum_array(
    Key UInt64,
    Value Array(Enum8('Option1'=1, 'Option2'=2))
)
ENGINE=MergeTree()
ORDER BY tuple();
INSERT INTO alter_enum_array VALUES (1, ['Option2', 'Option1']), (2, ['Option1']);
