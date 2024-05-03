SELECT positionUTF8(concat('               иголка.ру', arrayStringConcat(arrayMap(x -> ' ', range(20000)))), 'иголка.ру') AS res;
