SELECT toTypeName(tuple(toLowCardinality('1'), materialize(toLowCardinality(1))));
