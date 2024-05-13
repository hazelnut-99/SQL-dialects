DROP TABLE IF EXISTS default_constraints;
CREATE TABLE default_constraints
(
    x UInt8,
    y UInt8 DEFAULT x + 1,
    CONSTRAINT c CHECK y < 5
) ENGINE = Memory;
