select concat('a', 'b', materialize(toFixedString('c', 1))) == 'abc';
