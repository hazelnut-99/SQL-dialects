select format('{}{}', toFixedString('a', 1), materialize('b')) == 'ab';
