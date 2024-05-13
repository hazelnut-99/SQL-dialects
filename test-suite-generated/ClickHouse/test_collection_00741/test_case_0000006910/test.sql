SELECT toDate(0) AS x, toDate(1) AS y, ((x > y) ? x : y) AS z, toTypeName(x), toTypeName(y), toTypeName(z);
