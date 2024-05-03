SELECT toTypeName([materialize(toLowCardinality('1')), materialize('2')]);
