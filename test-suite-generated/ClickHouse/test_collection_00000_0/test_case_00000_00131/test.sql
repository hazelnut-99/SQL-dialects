select concat(toFixedString('a', 1), materialize('b'), materialize(toFixedString('c', 1))) == 'abc';
