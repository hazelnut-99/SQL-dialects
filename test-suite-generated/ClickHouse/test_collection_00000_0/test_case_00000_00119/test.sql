select concat(materialize('a'), materialize(toFixedString('b', 1)), materialize(toFixedString('c', 1))) == 'abc';
