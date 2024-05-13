drop table if exists test_byte_size_number0;
create table test_byte_size_number0
(
    key Int32,
    u8 UInt8,
    u16 UInt16,
    u32 UInt32,
    u64 UInt64,
    u256 UInt256,
    i8 Int8,
    i16 Int16,
    i32 Int32,
    i64 Int64,
    i128 Int128,
    i256 Int256,
    f32 Float32,
    f64 Float64
) engine MergeTree order by key;
insert into test_byte_size_number0 values(1, 8, 16, 32, 64, 256, -8, -16, -32, -64, -128, -256, 32.32, 64.64);
insert into test_byte_size_number0 values(2, 8, 16, 32, 64, 256, -8, -16, -32, -64, -128, -256, 32.32, 64.64);
