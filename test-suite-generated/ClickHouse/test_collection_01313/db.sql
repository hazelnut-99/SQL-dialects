DROP TABLE IF EXISTS columns_transformers;
CREATE TABLE columns_transformers (i int, j int, k int, a_bytes int, b_bytes int, c_bytes int) Engine=TinyLog;
INSERT INTO columns_transformers VALUES (100, 10, 324, 120, 8, 23);
