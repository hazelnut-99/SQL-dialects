select format('{}{}{}', materialize('a'), materialize('b'), toFixedString('c', 1)) == 'abc';
