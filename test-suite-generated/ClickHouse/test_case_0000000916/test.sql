select (1 ? ('abc' as s) : toFixedString('def', 3)) = s;
