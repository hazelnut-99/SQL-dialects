SELECT toTypeName(x) FROM (SELECT toDecimal32('12345.0', 4) AS x UNION ALL SELECT toUInt16(0) AS x) WHERE x = 0;
