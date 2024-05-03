SELECT number, neighbor(toString(number), 5, concat('Hello ', toString(number))) FROM numbers(10);
