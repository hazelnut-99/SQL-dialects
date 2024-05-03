CREATE TABLE tab (item_id UInt64, price_sold Nullable(Float32), date Date) ENGINE = MergeTree ORDER BY item_id;
