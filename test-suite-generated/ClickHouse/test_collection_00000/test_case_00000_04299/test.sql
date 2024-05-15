select format('{}{}', toFixedString('a', 1), materialize(toFixedString('b', 1))) == 'ab';
