CREATE TABLE IF NOT EXISTS test01603 (
    f64 Float64,
    d Decimal64(3) DEFAULT toDecimal32(f64, 3),
    f32 Float32 DEFAULT f64
) ENGINE=MergeTree() ORDER BY f32;
