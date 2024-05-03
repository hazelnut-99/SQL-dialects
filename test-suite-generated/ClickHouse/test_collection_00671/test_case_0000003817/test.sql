select maxMap([toInt32(number % 10), number % 10 + 1], [number, 1]) as m, toTypeName(m) from numbers(1, 100);
