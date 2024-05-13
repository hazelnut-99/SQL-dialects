DROP TABLE IF EXISTS m;
DROP TABLE IF EXISTS t1;
DROP TABLE IF EXISTS t2;
CREATE TABLE m
(
    `a` String,
    `f` UInt8 EPHEMERAL 0
)
ENGINE = Merge(currentDatabase(), '^(t1|t2)$');
