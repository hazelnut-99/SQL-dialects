DROP TABLE IF EXISTS tvs;
CREATE TABLE tvs(k UInt32, t UInt32, tv UInt64) ENGINE = Memory;
INSERT INTO tvs(k,t,tv) SELECT k, t, t
FROM (SELECT toUInt32(number) AS k FROM numbers(1000)) keys
CROSS JOIN (SELECT toUInt32(number * 3) as t FROM numbers(10000)) tv_times;
