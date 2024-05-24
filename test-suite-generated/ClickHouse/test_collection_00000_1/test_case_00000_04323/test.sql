select format('{}{}{}', materialize('a'), toFixedString('b', 1), materialize('c')) == 'abc';
