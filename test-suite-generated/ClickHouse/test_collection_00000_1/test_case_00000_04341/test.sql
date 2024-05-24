select format('{}{}{}', materialize(toFixedString('a', 1)), materialize('b'), materialize('c')) == 'abc';
