SELECT anyIf(number, number = 3) AS a, toTypeName(a) FROM (SELECT CAST(number, 'Nullable(UInt8)') AS number FROM numbers(2));
