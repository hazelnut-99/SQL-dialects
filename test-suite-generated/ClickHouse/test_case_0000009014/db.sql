DROP TABLE IF EXISTS nullable_division;
CREATE TABLE nullable_division (x UInt32, y Nullable(UInt32), a Decimal(7, 2), b Nullable(Decimal(7, 2))) ENGINE=MergeTree() order by x;
INSERT INTO nullable_division VALUES (1, 1, 1, 1), (1, NULL, 1, NULL), (1, 0, 1, 0);
