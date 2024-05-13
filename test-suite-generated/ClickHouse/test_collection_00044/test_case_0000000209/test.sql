select concat('a', materialize(toFixedString('b', 1)), 'c') == 'abc';
