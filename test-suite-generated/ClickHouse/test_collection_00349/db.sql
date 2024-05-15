DROP TABLE IF EXISTS cast;
CREATE TABLE cast
(
    x UInt8,
    e Enum8
    (
        'hello' = 1,
        'world' = 2
    )
    DEFAULT
    CAST
    (
        x
        AS
        Enum8
        (
            'hello' = 1,
            'world' = 2
        )
    )
) ENGINE = MergeTree ORDER BY e;
SHOW CREATE TABLE cast FORMAT TSVRaw;
DESC TABLE cast;
INSERT INTO cast (x) VALUES (1);
