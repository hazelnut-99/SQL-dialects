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
INSERT INTO vec2 VALUES (1, [100, 200, 0]), (2, [888, 777, 666]), (3, range(1, 35, 1)), (4, range(3, 37, 1)), (5, range(1, 135, 1)), (6, range(3, 137, 1));
INSERT INTO vec2f VALUES (1, [100, 200, 0]), (2, [888, 777, 666]), (3, range(1, 35, 1)), (4, range(3, 37, 1)), (5, range(1, 135, 1)), (6, range(3, 137, 1));
INSERT INTO vec2d VALUES (1, [100, 200, 0]), (2, [888, 777, 666]), (3, range(1, 35, 1)), (4, range(3, 37, 1)), (5, range(1, 135, 1)), (6, range(3, 137, 1));
