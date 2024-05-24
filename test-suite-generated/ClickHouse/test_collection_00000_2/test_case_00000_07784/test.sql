select if(number % 5 == 0, toUInt8OrZero(toString(number)), Null) from numbers(20);
