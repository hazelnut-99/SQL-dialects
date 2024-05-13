DROP TABLE IF EXISTS decimal;
CREATE TABLE IF NOT EXISTS decimal
(
    a DECIMAL(9,0),
    b DECIMAL(18,0),
    c DECIMAL(38,0),
    d DECIMAL(9, 9),
    e Decimal64(18),
    f Decimal128(38),
    g Decimal32(5),
    h Decimal64(9),
    i Decimal128(18),
    j dec(4,2)
) ENGINE = Memory;
INSERT INTO decimal (a, b, c, d, e, f, g, h, i, j) VALUES (42, 42, 42, 0.42, 0.42, 0.42, 42.42, 42.42, 42.42, 42.42);
INSERT INTO decimal (a, b, c, d, e, f, g, h, i, j) VALUES (-42, -42, -42, -0.42, -0.42, -0.42, -42.42, -42.42, -42.42, -42.42);
