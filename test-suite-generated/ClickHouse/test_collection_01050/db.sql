DROP TABLE IF EXISTS pk_order;
CREATE TABLE pk_order(a UInt64, b UInt64, c UInt64, d UInt64) ENGINE=MergeTree() ORDER BY (a, b);
INSERT INTO pk_order(a, b, c, d) VALUES (1, 1, 101, 1), (1, 2, 102, 1), (1, 3, 103, 1), (1, 4, 104, 1);
INSERT INTO pk_order(a, b, c, d) VALUES (1, 5, 104, 1), (1, 6, 105, 1), (2, 1, 106, 2), (2, 1, 107, 2);
INSERT INTO pk_order(a, b, c, d) VALUES (2, 2, 107, 2), (2, 3, 108, 2), (2, 4, 109, 2);
DROP TABLE IF EXISTS pk_order;
CREATE TABLE pk_order (a Int, b Int) ENGINE = MergeTree ORDER BY (a / b);
INSERT INTO pk_order SELECT number % 10 + 1, number % 6 + 1 from numbers(100);
