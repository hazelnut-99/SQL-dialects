select format('{}{}{}', toFixedString('a', 1), materialize(toFixedString('b', 1)), toFixedString('c', 1)) == 'abc';
