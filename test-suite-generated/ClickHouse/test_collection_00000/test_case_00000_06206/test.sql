select tuple(number, toNullable(number)) < tuple(toNullable(number), number + 1) from numbers(1);
