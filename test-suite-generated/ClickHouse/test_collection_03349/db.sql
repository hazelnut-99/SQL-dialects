WITH CAST([-547274980, 1790553898, 1981517754, 1908431500, 1352428565, -573412550, -552499284, 2096941042], 'Array(Int32)') AS a
SELECT
    L1Distance(a, a),
    L2Distance(a, a),
    L2SquaredDistance(a, a),
    LinfDistance(a, a),
    cosineDistance(a, a);
DROP TABLE IF EXISTS vec1;
DROP TABLE IF EXISTS vec2;
DROP TABLE IF EXISTS vec2f;
DROP TABLE IF EXISTS vec2d;
CREATE TABLE vec1 (id UInt64, v Array(UInt8)) ENGINE = Memory;
CREATE TABLE vec2 (id UInt64, v Array(Int64)) ENGINE = Memory;
CREATE TABLE vec2f (id UInt64, v Array(Float32)) ENGINE = Memory;
CREATE TABLE vec2d (id UInt64, v Array(Float64)) ENGINE = Memory;
INSERT INTO vec1 VALUES (1, [3, 4, 5]), (2, [2, 4, 8]), (3, [7, 7, 7]);
