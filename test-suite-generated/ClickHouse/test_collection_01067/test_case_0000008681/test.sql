select format('{}{}{}', toFixedString('a', 1), 'b', materialize(toFixedString('c', 1))) == 'abc';
