select if(number % 5, Null, toDateOrZero(toString(number))) from numbers(20);
