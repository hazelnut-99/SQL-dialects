DROP TABLE IF EXISTS t_1;
DROP TABLE IF EXISTS t_random_1;
CREATE TABLE t_random_1
(
    `ordinary_1` UInt32
)
ENGINE = GenerateRandom(1, 5, 3);
