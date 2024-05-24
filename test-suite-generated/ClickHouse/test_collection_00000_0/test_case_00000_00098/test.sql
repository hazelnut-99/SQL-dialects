select concat('a', materialize('b'), toFixedString('c', 1)) == 'abc';
