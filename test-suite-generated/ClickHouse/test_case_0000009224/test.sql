SELECT leftUTF8('Привет', number % 3 = 0 ? NULL : (number % 2 ? toInt64(number) : -number)) FROM numbers(10);
