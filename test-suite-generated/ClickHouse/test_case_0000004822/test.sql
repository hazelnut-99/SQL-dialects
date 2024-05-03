select tuple(number, toNullable(number)) < tuple(toNullable(number), number) from numbers(1);
