SELECT toTypeName(x) FROM (SELECT toDecimal32('1234.5', 5) AS x UNION ALL SELECT toUInt8(0) AS x) WHERE x = 0;
