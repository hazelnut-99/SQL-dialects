select tuple(number, toNullable(number)) < tuple(toNullable(number), toNullable(number + 1)) from numbers(1);
