DROP TABLE IF EXISTS m;
DROP TABLE IF EXISTS t1;
DROP TABLE IF EXISTS t2;
CREATE TABLE m
(
    a String,
    date Date,
    f UInt8
)
ENGINE = Merge(currentDatabase(), '^(t1|t2)$');
