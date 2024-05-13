SELECT materialize(toInt32(0)) AS x, toFloat32(1) AS y, ((x > y) ? x : y) AS z, toTypeName(x), toTypeName(y), toTypeName(z);
