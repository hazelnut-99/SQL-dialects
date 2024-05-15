DROP TABLE IF EXISTS pk;
DROP TABLE IF EXISTS merge_tree;
DROP TABLE IF EXISTS large_alter_table_00926;
DROP TABLE IF EXISTS store_of_hash_00926;
CREATE TABLE store_of_hash_00926 (hash UInt64) ENGINE = Memory();
