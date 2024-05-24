select if(number % 5 == 0, toFixedString(toString(number + 10), 2), toFixedString(toString(number + 11), 2)) from numbers(20);
