select format('{}{}{}', materialize(toFixedString('a', 1)), materialize(toFixedString('b', 1)), materialize(toFixedString('c', 1))) == 'abc';
