select concat(toFixedString('a', 1), materialize(toFixedString('b', 1)), 'c') == 'abc';
