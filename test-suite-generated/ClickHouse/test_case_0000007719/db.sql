DROP TABLE IF EXISTS distributed_tbl;
DROP TABLE IF EXISTS merge_tree_table;
CREATE TABLE merge_tree_table
(
    Date Date,
    SomeType UInt8,
    Alternative1 UInt64,
    Alternative2 UInt64,
    User UInt32,
    CharID UInt64 ALIAS multiIf(SomeType IN (3, 4, 11), 0, SomeType IN (7, 8), Alternative1, Alternative2)
)
ENGINE = MergeTree()
ORDER BY tuple();
INSERT INTO merge_tree_table VALUES(toDate('2016-03-01'), 4, 0, 0, 1486392);
