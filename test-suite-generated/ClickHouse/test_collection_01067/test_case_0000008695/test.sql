select format('{}{}{}', materialize(toFixedString('a', 1)), materialize(toFixedString('b', 1)), materialize('c')) == 'abc';
