select if(number % 5 == 0, toDateOrZero(toString(number)), toDateOrZero(toString(number + 1))) from numbers(20);
