select concat(materialize('a'), materialize(toFixedString('b', 1)), materialize('c')) == 'abc';
