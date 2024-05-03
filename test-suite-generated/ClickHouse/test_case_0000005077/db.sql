DROP TABLE IF EXISTS t;
CREATE TABLE t (item_id UInt64, price_sold Float32, date Date) ENGINE MergeTree ORDER BY item_id;
INSERT INTO t VALUES (1, 100, '1970-01-01'), (1, 200, '1970-01-02');
