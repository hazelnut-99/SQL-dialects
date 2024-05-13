select concat(materialize(toFixedString('a', 1)), toFixedString('b', 1)) == 'ab';
