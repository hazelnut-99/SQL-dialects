select concat(toFixedString('a', 1), materialize(toFixedString('b', 1)), materialize('c')) == 'abc';
