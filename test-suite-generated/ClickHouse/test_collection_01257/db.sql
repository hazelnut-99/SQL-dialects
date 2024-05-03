DROP TABLE IF EXISTS decimal;
CREATE TABLE IF NOT EXISTS decimal
(
    A UInt64,
    B Decimal128(18),
    C Decimal128(18)
) Engine = Memory;
INSERT INTO decimal VALUES (1,1,1), (1,1,2), (1,1,3), (1,1,4);
