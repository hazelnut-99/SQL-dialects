select format('{}{}{}', materialize('a'), 'b', materialize('c')) == 'abc';
