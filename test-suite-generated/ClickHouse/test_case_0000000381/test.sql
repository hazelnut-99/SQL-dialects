SELECT number, neighbor(toString(number), -5, concat('World ', toString(number))) FROM numbers(10);
