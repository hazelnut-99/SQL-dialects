DROP TABLE IF EXISTS nnd;
CREATE TABLE nnd
(
    id Int8, ts DateTime64(3, 'UTC'), metric Float64
)
ENGINE=MergeTree()
ORDER BY id;
INSERT INTO nnd VALUES (1, toDateTime64('1979-12-12 21:21:21.123456788', 9, 'UTC'), 1.1), (2, toDateTime64('1979-12-12 21:21:21.123456789', 9, 'UTC'), 2.34), (3, toDateTime64('1979-12-12 21:21:21.127', 3, 'UTC'), 3.7);
INSERT INTO nnd VALUES (4, toDateTime64('1979-12-12 21:21:21.129', 3, 'UTC'), 2.1), (5, toDateTime('1979-12-12 21:21:22', 'UTC'), 1.3345), (6, toDateTime('1979-12-12 21:21:23', 'UTC'), 1.54), (7, toDateTime('1979-12-12 21:21:23', 'UTC'), 1.54);
OPTIMIZE TABLE nnd;
