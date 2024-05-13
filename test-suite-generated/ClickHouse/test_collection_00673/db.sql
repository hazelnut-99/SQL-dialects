DROP TABLE IF EXISTS decimal;
CREATE TABLE decimal
(
    a Array(Decimal32(3)),
    b Array(Decimal64(3)),
    c Array(Decimal128(3)),
    nest Nested
    (
        a Decimal(9,2),
        b Decimal(18,2),
        c Decimal(38,2)
    ),
    tup Tuple(Decimal32(1), Decimal64(1), Decimal128(1))
) ENGINE = Memory;
INSERT INTO decimal (a, b, c, nest.a, nest.b, nest.c, tup)
    VALUES ([0.1, 0.2, 0.3], [0.4, 0.5, 0.6], [0.7, 0.8, 0.9], [1.1, 1.2], [2.1, 2.2], [3.1, 3.2], (9.1, 9.2, 9.3));
