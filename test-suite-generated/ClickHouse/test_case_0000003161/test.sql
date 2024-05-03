SELECT toNullable(materialize(0)) + 1 AS x, toTypeName(x), toColumnTypeName(x);
