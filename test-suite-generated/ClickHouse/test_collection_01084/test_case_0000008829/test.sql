SELECT coalesce(NULL, toNullable(materialize(2))) as x, toTypeName(x);
