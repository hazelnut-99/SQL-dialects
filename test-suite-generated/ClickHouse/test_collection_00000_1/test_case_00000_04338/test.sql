select format('{}{}{}', materialize(toFixedString('a', 1)), 'b', 'c') == 'abc';
