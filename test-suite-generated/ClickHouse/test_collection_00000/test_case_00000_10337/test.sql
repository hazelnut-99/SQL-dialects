SELECT toTypeName(tuple(materialize(toLowCardinality('1')), toLowCardinality(1)));
