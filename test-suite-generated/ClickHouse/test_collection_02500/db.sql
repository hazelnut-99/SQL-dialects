DROP TABLE IF EXISTS constraint_constant_number_expression;
CREATE TABLE constraint_constant_number_expression
(
    id UInt64,
    CONSTRAINT `c0` CHECK 1,
    CONSTRAINT `c1` CHECK 1 < 2,
    CONSTRAINT `c2` CHECK isNull(cast(NULL, 'Nullable(UInt8)'))
) ENGINE = TinyLog();
INSERT INTO constraint_constant_number_expression VALUES (1);
