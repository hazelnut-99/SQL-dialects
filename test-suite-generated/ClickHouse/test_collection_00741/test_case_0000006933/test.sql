SELECT materialize(toInt16(0)) AS x, toUInt32(1) AS y, ((x > y) ? x : y) AS z, toTypeName(x), toTypeName(y), toTypeName(z);
