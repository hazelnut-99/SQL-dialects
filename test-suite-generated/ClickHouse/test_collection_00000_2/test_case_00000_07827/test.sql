select if(number % 5 == 0, repeat(toString(number), 2), repeat(toString(number + 1), 2)) from numbers(20);
