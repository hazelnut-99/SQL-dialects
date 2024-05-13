select format('{}{}', materialize(toFixedString('a', 1)), toFixedString('b', 1)) == 'ab';
