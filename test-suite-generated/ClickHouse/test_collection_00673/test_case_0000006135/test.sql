SELECT toTypeName(x) FROM (SELECT toDecimal64('12345', 0) AS x UNION ALL SELECT toInt64(0) AS x) WHERE x = 0;
