select if(number % 5 == 0, toDateTimeOrZero(toString(number * 10000), 'UTC'), Null) from numbers(20);
