SELECT toTypeName(tuple(materialize(toLowCardinality('1')), materialize(toLowCardinality(1))));
