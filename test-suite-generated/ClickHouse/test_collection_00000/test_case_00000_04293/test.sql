select format('{}{}', materialize('a'), materialize(toFixedString('b', 1))) == 'ab';
