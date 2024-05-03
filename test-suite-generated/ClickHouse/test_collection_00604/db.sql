DROP TABLE IF EXISTS temp;
CREATE TABLE temp
(
    x Decimal(38, 2),
    y Nullable(Decimal(38, 2))
) ENGINE = Memory;
INSERT INTO temp VALUES (32, 32), (64, 64), (128, 128), (256, 256);
