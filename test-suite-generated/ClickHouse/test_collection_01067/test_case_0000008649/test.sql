select format('{}{}{}', 'a', 'b', materialize(toFixedString('c', 1))) == 'abc';
