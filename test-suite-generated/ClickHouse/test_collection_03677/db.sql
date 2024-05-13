DROP TABLE IF EXISTS decimal_in_float_test;
CREATE TABLE decimal_in_float_test ( `a` Decimal(18, 0), `b` Decimal(36, 2) ) ENGINE = Memory;
INSERT INTO decimal_in_float_test VALUES ('33', '44.44');
