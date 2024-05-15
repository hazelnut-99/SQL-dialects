SELECT coalesce(toNullable(1), toNullable(2)) as x, toTypeName(x);
