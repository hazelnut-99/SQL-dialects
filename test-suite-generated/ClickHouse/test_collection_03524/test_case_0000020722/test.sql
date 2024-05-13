SELECT toTypeName([toLowCardinality('1'), materialize(toLowCardinality('2'))]);
