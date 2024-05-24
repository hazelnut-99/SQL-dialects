select if(number % 5 == 0, replicate(toString(number), range(number)), replicate(toString(number), range(number + 1))) from numbers(20);
