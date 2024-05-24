select if(number % 5, Null, toFixedString(toString(number + 10), 2)) from numbers(20);
