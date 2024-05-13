select format('{}{}{}', materialize(toFixedString('a', 1)), materialize('b'), toFixedString('c', 1)) == 'abc';
