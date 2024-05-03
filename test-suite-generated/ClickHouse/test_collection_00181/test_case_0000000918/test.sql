select (1 ? (now() as n) : now() - 1) = n;
