SELECT toTypeName(map(toLowCardinality('1'), materialize(toLowCardinality('2'))));
