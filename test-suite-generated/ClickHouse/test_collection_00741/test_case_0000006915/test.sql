SELECT materialize(toInt8(0)) AS x, toInt8(1) AS y, ((x > y) ? x : y) AS z, toTypeName(x), toTypeName(y), toTypeName(z);
