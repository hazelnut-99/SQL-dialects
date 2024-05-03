SELECT materialize(toNullable(0)) + materialize(1) AS x, toTypeName(x), toColumnTypeName(x);
