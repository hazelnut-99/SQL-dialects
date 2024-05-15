DROP TABLE IF EXISTS defaults;
CREATE TABLE defaults
(
    x UInt32,
    y UInt32,
    a DEFAULT x + y,
    b Float32 DEFAULT round(log(1 + x + y), 5),
    c UInt32 DEFAULT 42,
    e MATERIALIZED x + y,
    f ALIAS x + y
) ENGINE = MergeTree ORDER BY x;
INSERT INTO defaults FORMAT JSONEachRow {"x":1, "y":1};
INSERT INTO defaults (x, y) SELECT x, y FROM defaults LIMIT 1;
INSERT INTO defaults FORMAT JSONEachRow {"x":2, "y":2, "c":2};
INSERT INTO defaults FORMAT JSONEachRow {"x":3, "y":3, "a":3, "b":3, "c":3};
INSERT INTO defaults FORMAT JSONEachRow {"x":4} {"y":5, "c":5} {"a":6, "b":6, "c":6};
