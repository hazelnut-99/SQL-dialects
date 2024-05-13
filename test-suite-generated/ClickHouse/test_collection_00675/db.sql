DROP TABLE IF EXISTS decimal;
CREATE TABLE decimal
(
    a Decimal(6, 4),
    b Decimal(16, 7),
    c Decimal(20, 8)
) ENGINE = Memory;
