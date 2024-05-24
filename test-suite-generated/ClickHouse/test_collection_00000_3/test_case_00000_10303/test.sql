SELECT toTypeName(map(materialize(toLowCardinality('1')), toLowCardinality('2')));
