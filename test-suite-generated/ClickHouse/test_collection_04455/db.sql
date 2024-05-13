DROP TABLE IF EXISTS order_by_all;
CREATE TABLE order_by_all
(
    a String,
    b Nullable(Int32)
)
ENGINE = Memory;
INSERT INTO order_by_all VALUES ('B', 3), ('C', NULL), ('D', 1), ('A', 2);
DROP TABLE order_by_all;
