select if(number % 5 == 0, toUInt8OrZero(toString(number)), toUInt8OrZero(toString(number + 1))) from numbers(20);
