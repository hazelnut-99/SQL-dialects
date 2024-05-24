select format('{}{}{}', materialize(toFixedString('a', 1)), 'b', toFixedString('c', 1)) == 'abc';
