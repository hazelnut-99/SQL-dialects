SELECT materialize(toNullable(0)) + 1 AS x, toTypeName(x), toColumnTypeName(x);
