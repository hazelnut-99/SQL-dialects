SELECT toTypeName([materialize(toLowCardinality('1')), materialize(toLowCardinality('2'))]);
