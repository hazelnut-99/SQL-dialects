DROP TABLE IF EXISTS t_filter;
CREATE TABLE t_filter(s String, a Array(FixedString(3)), u UInt64, f UInt8)
ENGINE = MergeTree ORDER BY u;
INSERT INTO t_filter SELECT toString(number), ['foo', 'bar'], number, toUInt8(number) FROM numbers(1000);
