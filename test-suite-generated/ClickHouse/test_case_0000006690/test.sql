select argMin(x.1, x.2), argMax(x.1, x.2) from (select (toString(number), toInt32(number) + 1) as x from numbers(10));
