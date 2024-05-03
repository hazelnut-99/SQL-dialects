DROP TABLE IF EXISTS decimal;
CREATE TABLE IF NOT EXISTS decimal
(
    a DECIMAL(9,4) DEFAULT 0,
    b DECIMAL(18,4) DEFAULT a / 2,
    c DECIMAL(38,4) DEFAULT b / 3,
    d MATERIALIZED a + toDecimal32('0.2', 1),
    e ALIAS b * 2,
    f ALIAS c * 6
) ENGINE = Memory;
INSERT INTO decimal (a) VALUES (0), (1), (2), (3);
