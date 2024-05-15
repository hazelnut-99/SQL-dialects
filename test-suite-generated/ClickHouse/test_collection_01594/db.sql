DROP TABLE IF EXISTS t;
CREATE TABLE t (`item_id` UInt64, `price_sold` Float32, `date` Date) ENGINE = MergeTree ORDER BY item_id;
