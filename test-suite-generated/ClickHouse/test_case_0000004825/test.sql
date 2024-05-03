select tuple(toNullable(number), toNullable(number)) < tuple(number, number + 1) from numbers(1);
