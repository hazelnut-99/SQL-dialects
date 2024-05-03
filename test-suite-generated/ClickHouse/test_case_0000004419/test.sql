SELECT coalesce(toNullable(materialize(1)), NULL) as x, toTypeName(x);
