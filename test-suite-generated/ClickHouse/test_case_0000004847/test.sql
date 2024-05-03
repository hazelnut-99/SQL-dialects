select tuple(toNullable(number), materialize('a'), number) < tuple(number, materialize('a'), number + 1) from numbers(1);
