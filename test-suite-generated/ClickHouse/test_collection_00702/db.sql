DROP TABLE IF EXISTS codecTest;
CREATE TABLE codecTest (
    key      UInt64,
    name     String,
    ref_valueF64 Float64,
    ref_valueF32 Float32,
    valueF64 Float64  CODEC(Gorilla),
    valueF32 Float32  CODEC(Gorilla)
) Engine = MergeTree ORDER BY key;
