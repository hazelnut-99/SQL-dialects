select concat(materialize(toFixedString('a', 1)), materialize(toFixedString('b', 1)), 'c') == 'abc';
