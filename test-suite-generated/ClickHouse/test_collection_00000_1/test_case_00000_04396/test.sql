SELECT coalesce(NULL, toLowCardinality(toNullable(2))) as x, toTypeName(x);
