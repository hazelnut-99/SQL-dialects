select concat('a', toFixedString('b', 1), materialize(toFixedString('c', 1))) == 'abc';
