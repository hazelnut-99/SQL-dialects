DROP TABLE IF EXISTS codecTest;
CREATE TABLE codecTest (
    key      UInt64,
    name     String,
    ref_valueF64 Float64,
    ref_valueF32 Float32,
    valueF64 Float64  CODEC(FPC),
    valueF32 Float32  CODEC(FPC)
) Engine = MergeTree ORDER BY key;
DROP TABLE IF EXISTS codecTest;
CREATE TABLE codecTest (
    key      UInt64,
    name     String,
    ref_valueF64 Float64,
    ref_valueF32 Float32,
    valueF64 Float64  CODEC(FPC(4)),
    valueF32 Float32  CODEC(FPC(4))
) Engine = MergeTree ORDER BY key;
