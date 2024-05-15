select format('{}{}{}', materialize('a'), toFixedString('b', 1), toFixedString('c', 1)) == 'abc';
