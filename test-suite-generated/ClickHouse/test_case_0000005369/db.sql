DROP TABLE IF EXISTS defaults;
CREATE TABLE defaults
(
    strings String,
    i8 Int8,
    u16 UInt16,
    u32 UInt32,
    u64 UInt64
)ENGINE = Memory();
INSERT INTO defaults values ('abc', 3, 12, 4, 56) ('sdfgg', -2, 10, 21, 200) ('xywq', -1, 4, 9, 5) ('plkf', 0, 5, 7,77);
