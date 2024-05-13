SELECT anyIf(CAST(number, 'Nullable(UInt8)'), number = 3) AS a, toTypeName(a) FROM numbers(2);
