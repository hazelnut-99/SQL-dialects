DROP TABLE IF EXISTS alter_table;
CREATE TABLE alter_table (a UInt8, b Int16)
ENGINE = MergeTree
ORDER BY a;
