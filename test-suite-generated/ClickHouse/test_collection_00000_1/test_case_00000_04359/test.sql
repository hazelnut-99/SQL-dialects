select format('{}{}{}', toFixedString('a', 1), toFixedString('b', 1), materialize(toFixedString('c', 1))) == 'abc';
