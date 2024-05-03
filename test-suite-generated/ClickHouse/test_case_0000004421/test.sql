SELECT coalesce(toLowCardinality(toNullable(1)), toLowCardinality(toNullable(2))) as x, toTypeName(x);
