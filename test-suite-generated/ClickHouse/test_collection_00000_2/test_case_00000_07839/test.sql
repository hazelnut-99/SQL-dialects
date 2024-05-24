select if(number % 5 == 0, toDateTimeOrZero(toString(number * 10000), 'UTC'), toDateTimeOrZero(toString((number + 1) * 10000), 'UTC')) from numbers(20);
