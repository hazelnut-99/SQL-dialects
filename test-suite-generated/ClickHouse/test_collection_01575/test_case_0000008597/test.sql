SELECT positionCaseInsensitiveUTF8(materialize(concat('      xẞyyaa1ẞ1yzẞXẞẞ1ẞẞ1bctest', arrayStringConcat(arrayMap(x -> ' ', range(20000))))), 'aa1ẞ1Yzßxßß1ßß1BC') AS res;
