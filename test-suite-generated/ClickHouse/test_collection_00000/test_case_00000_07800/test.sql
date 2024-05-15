select if(number % 5 == 0, toUInt64OrZero(toString(number)), Null) from numbers(20);
