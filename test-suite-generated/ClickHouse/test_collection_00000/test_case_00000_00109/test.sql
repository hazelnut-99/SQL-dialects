select concat(materialize('a'), toFixedString('b', 1), materialize('c')) == 'abc';
