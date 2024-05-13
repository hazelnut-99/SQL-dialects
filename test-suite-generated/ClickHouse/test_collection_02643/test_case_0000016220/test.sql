select if(number % 5 == 0, Null, toDateOrZero(toString(number))) from numbers(20);
