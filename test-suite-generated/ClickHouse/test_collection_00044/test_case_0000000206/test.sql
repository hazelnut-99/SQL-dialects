select concat(materialize('a'), materialize('b'), materialize(toFixedString('c', 1))) == 'abc';
