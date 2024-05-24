select format('{}{}{}', 'a', materialize(toFixedString('b', 1)), materialize('c')) == 'abc';
