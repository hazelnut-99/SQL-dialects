DROP TABLE IF EXISTS prewhere;
CREATE TABLE prewhere (x Array(UInt64), y ALIAS x, s String) ENGINE = MergeTree ORDER BY tuple();
