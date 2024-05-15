SELECT positionCaseInsensitive(concat('          иголка.ру', arrayStringConcat(arrayMap(x -> ' ', range(20000)))), 'иголка.ру') AS res;
