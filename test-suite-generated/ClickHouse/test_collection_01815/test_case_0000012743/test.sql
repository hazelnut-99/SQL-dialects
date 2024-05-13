select tuple(toNullable(number), number) < tuple(number, number + 1) from numbers(1);
