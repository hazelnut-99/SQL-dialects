select concat('a', toFixedString('b', 1), materialize('c')) == 'abc';
