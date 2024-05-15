select concat(toFixedString('a', 1), toFixedString('b', 1), materialize('c')) == 'abc';
