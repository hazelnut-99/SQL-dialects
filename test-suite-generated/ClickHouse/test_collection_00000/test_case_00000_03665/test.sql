SELECT materialize(toDateTime(0, 'Asia/Istanbul')) AS x, toDateTime(1, 'Asia/Istanbul') AS y, ((x > y) ? x : y) AS z, toTypeName(x), toTypeName(y), toTypeName(z);
