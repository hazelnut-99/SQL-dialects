SELECT coalesce(toLowCardinality(toNullable(1)), NULL) as x, toTypeName(x);
