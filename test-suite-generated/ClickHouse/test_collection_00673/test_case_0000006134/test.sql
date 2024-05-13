SELECT toTypeName(x) FROM (SELECT toDecimal32('12345', 0) AS x UNION ALL SELECT toInt32(0) AS x) WHERE x = 0;
