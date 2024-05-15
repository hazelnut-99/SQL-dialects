SELECT arrayReduce('median', [toLowCardinality(toNullable(8))]) as t, toTypeName(t);
