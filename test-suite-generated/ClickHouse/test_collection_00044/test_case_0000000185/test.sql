select concat(materialize(toFixedString('a', 1)), 'b') == 'ab';
