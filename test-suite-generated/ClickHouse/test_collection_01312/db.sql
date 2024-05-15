DROP TABLE IF EXISTS columns_transformers;
CREATE TABLE columns_transformers (i Int64, j Int16, k Int64) Engine=TinyLog;
INSERT INTO columns_transformers VALUES (100, 10, 324), (120, 8, 23);
