select concat(toFixedString('a', 1), 'b', materialize('c')) == 'abc';
