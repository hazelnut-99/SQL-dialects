select (1 ? toFixedString('abc' as s, 3) : toFixedString('def', 3)) = s;
