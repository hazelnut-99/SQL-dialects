SELECT materialize(toUInt8(0)) AS x, toUInt64(1) AS y, ((x > y) ? x : y) AS z, toTypeName(x), toTypeName(y), toTypeName(z);
