select concat(materialize('a'), toFixedString('b', 1), 'c') == 'abc';
