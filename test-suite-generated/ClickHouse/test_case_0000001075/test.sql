SELECT toTypeName(map(materialize(toLowCardinality('1')), materialize(toLowCardinality('2'))));
