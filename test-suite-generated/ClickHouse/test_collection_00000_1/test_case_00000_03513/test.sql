SELECT toInt64(0) AS x, toUInt8(1) AS y, ((x > y) ? x : y) AS z, toTypeName(x), toTypeName(y), toTypeName(z);
