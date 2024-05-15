DROP TABLE IF EXISTS order_with_aggr;
CREATE TABLE order_with_aggr(a Int) ENGINE = MergeTree ORDER BY a;
INSERT INTO order_with_aggr SELECT * FROM numbers(100);
