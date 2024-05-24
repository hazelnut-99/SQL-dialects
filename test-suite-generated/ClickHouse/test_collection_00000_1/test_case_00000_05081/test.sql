SELECT
    ui64, i64,
    ui32, i32,
    ui16, i16,
    ui8, i8
FROM generateRandom('ui64 UInt64, i64 Int64, ui32 UInt32, i32 Int32, ui16 UInt16, i16 Int16, ui8 UInt8, i8 Int8', 1, 10, 10)
LIMIT 10;
