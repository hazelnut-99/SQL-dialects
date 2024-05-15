SELECT materialize(toInt32(0)) AS x, toDecimal64(1, 0) AS y, ((x > y) ? x : y) AS z, toTypeName(x), toTypeName(y), toTypeName(z);
