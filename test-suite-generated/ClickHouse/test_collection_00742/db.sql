DROP TABLE IF EXISTS or_expr_bug;
CREATE TABLE or_expr_bug (a UInt64, b UInt64) ENGINE = Memory;
INSERT INTO or_expr_bug VALUES(1,21),(1,22),(1,23),(2,21),(2,22),(2,23),(3,21),(3,22),(3,23);
