DROP TABLE IF EXISTS decimal;
CREATE TABLE IF NOT EXISTS decimal
(
    d1 DECIMAL(9, 8),
    d2 DECIMAL(18, 8),
    d3 DECIMAL(38, 8)
)
ENGINE = MergeTree
PARTITION BY toInt32(d1)
ORDER BY (d2, d3);
INSERT INTO decimal (d1, d2, d3) VALUES (4.2, 4.2, 4.2);
