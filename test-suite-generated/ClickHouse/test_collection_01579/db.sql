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
drop table if exists test_byte_size_number0;
drop table if exists test_byte_size_number1;
create table test_byte_size_number1
(
    key Int32,
    date Date,
    dt DateTime,
    dt64 DateTime64(3),
    en8 Enum8('a'=1, 'b'=2, 'c'=3, 'd'=4),
    en16 Enum16('c'=100, 'l'=101, 'i'=102, 'ck'=103, 'h'=104, 'o'=105, 'u'=106, 's'=107, 'e'=108),
    dec32 Decimal32(4),
    dec64 Decimal64(8),
    dec128 Decimal128(16),
    dec256 Decimal256(16),
    uuid UUID
) engine MergeTree order by key;
insert into test_byte_size_number1 values(1, '2020-01-01', '2020-01-01 01:02:03', '2020-02-02 01:02:03', 'a', 'ck', 32.32, 64.64, 128.128, 256.256, generateUUIDv4());
insert into test_byte_size_number1 values(2, '2020-01-01', '2020-01-01 01:02:03', '2020-02-02 01:02:03', 'a', 'ck', 32.32, 64.64, 128.128, 256.256, generateUUIDv4());
drop table if exists test_byte_size_number1;
drop table if exists test_byte_size_string;
create table test_byte_size_string
(
    key Int32,
    str1 String,
    str2 String,
    fstr1 FixedString(8),
    fstr2 FixedString(8)
) engine MergeTree order by key;
insert into test_byte_size_string values(1, '', 'a', '', 'abcde');
insert into test_byte_size_string values(2, 'abced', '', 'abcde', '');
drop table if exists test_byte_size_string;
drop table if exists test_byte_size_array;
create table test_byte_size_array
(
    key Int32,
    uints8 Array(UInt8),
    ints8 Array(Int8),
    ints32 Array(Int32),
    floats32 Array(Float32),
    decs32 Array(Decimal32(4)),
    dates Array(Date),
    uuids Array(UUID)
) engine MergeTree order by key;
insert into test_byte_size_array values(1, [], [], [], [], [], [], []);
insert into test_byte_size_array values(2, [1], [-1], [256], [1.1], [1.1], ['2020-01-01'], ['61f0c404-5cb3-11e7-907b-a6006ad3dba0']);
insert into test_byte_size_array values(3, [1,1], [-1,-1], [256,256], [1.1,1.1], [1.1,1.1], ['2020-01-01','2020-01-01'], ['61f0c404-5cb3-11e7-907b-a6006ad3dba0','61f0c404-5cb3-11e7-907b-a6006ad3dba0']);
insert into test_byte_size_array values(4, [1,1,1], [-1,-1,-1], [256,256,256], [1.1,1.1,1.1], [1.1,1.1,1.1], ['2020-01-01','2020-01-01','2020-01-01'], ['61f0c404-5cb3-11e7-907b-a6006ad3dba0','61f0c404-5cb3-11e7-907b-a6006ad3dba0','61f0c404-5cb3-11e7-907b-a6006ad3dba0']);
