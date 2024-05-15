select concat(materialize(toFixedString('a', 1)), materialize('b'), 'c') == 'abc';
