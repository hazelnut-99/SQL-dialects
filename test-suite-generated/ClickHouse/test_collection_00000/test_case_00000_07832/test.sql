select if(number % 5 == 0, toFixedString(toString(number + 10), 2), Null) from numbers(20);
