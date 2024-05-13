CREATE TABLE test_a_table (
    name String,
    a_col String
)
Engine = MergeTree()
ORDER BY name;
CREATE TABLE test_b_table (
    name String,
    b_col String,
    some_val String
)
Engine = MergeTree()
ORDER BY name;
