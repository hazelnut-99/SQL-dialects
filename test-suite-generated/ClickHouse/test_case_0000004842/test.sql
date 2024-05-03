select tuple(toNullable(number), materialize('a'), number) = tuple(number, materialize('a'), number) from numbers(1);
