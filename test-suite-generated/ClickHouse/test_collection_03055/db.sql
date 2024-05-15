Select sum(number + 1) from numbers(10);
Select sum(1 + number) from numbers(10);
Select sum(number - 1) from numbers(10);
Select sum(1 - number) from numbers(10);
WITH 1::Nullable(UInt64) as my_literal Select sum(number + my_literal) from numbers(0);
WITH 1::Nullable(UInt64) as my_literal Select sum(number) + my_literal * count() from numbers(0);
DROP TABLE IF EXISTS test_table;
CREATE TABLE test_table
(
    uint64 UInt64,
    float64 Float64,
    decimal32 Decimal32(5),
) ENGINE=MergeTree ORDER BY uint64;
