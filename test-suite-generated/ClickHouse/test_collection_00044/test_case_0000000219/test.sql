select concat(materialize('a'), toFixedString('b', 1), toFixedString('c', 1)) == 'abc';
