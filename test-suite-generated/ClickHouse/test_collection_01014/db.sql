DROP TABLE IF EXISTS multiword_types;
DROP TABLE IF EXISTS unsigned_types;
CREATE TABLE multiword_types (
    a DOUBLE,
    b DOUBLE PRECISION,
    c CHAR DEFAULT 'str',
    d CHAR VARYING,
    e CHAR LARGE OBJECT COMMENT 'comment',
    f CHARACTER VARYING(123),
    g ChArAcTeR   large    OBJECT,
    h nchar varying (456) default toString(a) comment 'comment',
    i NCHAR LARGE OBJECT,
    j BINARY LARGE OBJECT,
    k BINARY VARYING,
    l NATIONAL CHAR,
    m NATIONAL CHARACTER,
    n NATIONAL CHARACTER LARGE OBJECT,
    o NATIONAL CHARACTER VARYING,
    p NATIONAL CHAR VARYING
) ENGINE=Memory;
SHOW CREATE TABLE multiword_types;
INSERT INTO multiword_types(a) VALUES (1);
