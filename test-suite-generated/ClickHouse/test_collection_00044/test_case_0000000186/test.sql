select concat(materialize(toFixedString('a', 1)), materialize('b')) == 'ab';
