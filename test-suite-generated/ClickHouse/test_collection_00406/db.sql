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
INSERT INTO decimal (a, b, c, d, e, f) VALUES (1.1, 1.1, 1.1, 1.1, 1.1, 1.1);
INSERT INTO decimal (a, b, c, d) VALUES (2.2, 2.2, 2.2, 2.2);
INSERT INTO decimal (a, b, c, e) VALUES (3.3, 3.3, 3.3, 3.3);
INSERT INTO decimal (a, b, c, f) VALUES (4.4, 4.4, 4.4, 4.4);
INSERT INTO decimal (a, b, c) VALUES (5.5, 5.5, 5.5);
