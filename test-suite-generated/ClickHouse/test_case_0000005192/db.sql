DROP TABLE IF EXISTS decimal;
CREATE TABLE IF NOT EXISTS decimal
(
    a DEC(9, 2),
    b DEC(18, 5),
    c DEC(38, 5),
    d Nullable(DEC(9, 4)),
    e Nullable(DEC(18, 8)),
    f Nullable(DEC(38, 8))
) ENGINE = Memory;
