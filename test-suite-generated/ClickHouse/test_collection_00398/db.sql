DROP TABLE IF EXISTS decimal;
CREATE TABLE IF NOT EXISTS decimal
(
    a DECIMAL(9,0),
    b DECIMAL(18,0),
    c DECIMAL(38,0),
    d DECIMAL(9, 9),
    e DEC(18, 18),
    f dec(38, 38),
    g Decimal(9, 3),
    h decimal(18, 9),
    i deciMAL(38, 18),
    j dec(4, 2),
    k NumEriC(23, 4),
    l numeric(9, 3),
    m NUMEric(18, 9),
    n FixED(12, 6),
    o fixed(8, 6)
) ENGINE = Memory;
INSERT INTO decimal (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o) VALUES (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO decimal (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o) VALUES (42, 42, 42, 0.42, 0.42, 0.42, 42.42, 42.42, 42.42, 42.42, 42.42, 42.42, 42.42, 42.42, 42.42);
INSERT INTO decimal (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o) VALUES (-42, -42, -42, -0.42, -0.42, -0.42, -42.42, -42.42, -42.42, -42.42, -42.42, -42.42, -42.42, -42.42, -42.42);
