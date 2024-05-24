SELECT coalesce(toNullable(materialize(1)), toNullable(materialize(2))) as x, toTypeName(x);
