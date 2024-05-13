select if(materialize(0), materialize(toLowCardinality('a')), materialize(toLowCardinality('b')));
