select tuple(toNullable(number), toNullable(number)) < tuple(toNullable(number + 1), number) from numbers(1);
