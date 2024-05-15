select if(number % 5 == 0, Null, toDateTimeOrZero(toString(number * 10000), 'UTC')) from numbers(20);
