CREATE TABLE mytable
(
    operand Float64,
    low     Float64,
    high     Float64,
    count   UInt64,
    PRIMARY KEY (operand, low, high, count)
) ENGINE = MergeTree();
INSERT INTO mytable VALUES (3, -100, 200, 10), (0, 0, 10, 4), (3, 0, 10, 3), (4.333, 1, 11, 3), (4.34, 1, 11, 3), (-7.6, -10, 0, 4), (-6, -5, -1, 2), (1, 3, 0, 1), (3, 2, 5, 0);
