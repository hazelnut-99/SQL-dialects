select format('{}{}{}', toFixedString('a', 1), 'b', materialize('c')) == 'abc';
