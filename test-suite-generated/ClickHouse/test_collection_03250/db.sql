DROP TABLE IF EXISTS 02005_test_table;
CREATE TABLE 02005_test_table
(
    value Map(Int64, Int64)
)
ENGINE = TinyLog;
TRUNCATE TABLE 02005_test_table;
INSERT INTO 02005_test_table VALUES (map(0, 5));
