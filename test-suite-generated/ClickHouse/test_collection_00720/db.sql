DROP TABLE IF EXISTS ColumnsClauseTest;
CREATE TABLE ColumnsClauseTest (product_price Int64, product_weight Int16, amount Int64) Engine=TinyLog;
INSERT INTO ColumnsClauseTest VALUES (100, 10, 324), (120, 8, 23);
