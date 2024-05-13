select tuple(toNullable(number), toNullable(number)) < tuple(toNullable(number + 1), toNullable(number)) from numbers(1);
