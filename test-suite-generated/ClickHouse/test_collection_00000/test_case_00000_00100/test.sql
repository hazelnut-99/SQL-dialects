select concat(materialize('a'), 'b', toFixedString('c', 1)) == 'abc';
