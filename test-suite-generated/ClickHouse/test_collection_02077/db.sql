DROP TABLE IF EXISTS merge_tree_table1;
CREATE TABLE buffer_table1 ( `s` String , x UInt32) ENGINE = Buffer(currentDatabase(), 'merge_tree_table1', 16, 10, 60, 10, 1000, 1048576, 2097152);
