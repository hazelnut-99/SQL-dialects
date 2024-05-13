select if(materialize(0), materialize(toLowCardinality('a')), materialize('b'));
