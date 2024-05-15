select format('{}{}{}', materialize('a'), 'b', materialize(toFixedString('c', 1))) == 'abc';
