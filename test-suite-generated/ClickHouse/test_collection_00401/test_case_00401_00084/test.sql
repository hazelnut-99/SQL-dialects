SELECT toTypeName(x) FROM (SELECT toDecimal32('12.345', 7) AS x UNION ALL SELECT toInt8(0) AS x) WHERE x = 0;
