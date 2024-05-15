DROP TABLE IF EXISTS ints;
DROP TABLE IF EXISTS floats;
DROP TABLE IF EXISTS strings;
CREATE TABLE ints (
    a TINYINT,
    b TINYINT(8),
    c SMALLINT,
    d SMALLINT(16),
    e INT,
    f INT(32),
    g BIGINT,
    h BIGINT(64)
) engine=Memory;
INSERT INTO ints VALUES (1, 8, 11, 16, 21, 32, 41, 64);
