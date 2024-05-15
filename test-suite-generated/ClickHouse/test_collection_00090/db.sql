DROP TABLE IF EXISTS has_column_in_table;
CREATE TABLE has_column_in_table (i Int64, s String, nest Nested(x UInt8, y UInt32)) ENGINE = Memory;
