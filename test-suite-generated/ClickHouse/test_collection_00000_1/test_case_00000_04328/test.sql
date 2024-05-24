select format('{}{}{}', 'a', materialize(toFixedString('b', 1)), toFixedString('c', 1)) == 'abc';
