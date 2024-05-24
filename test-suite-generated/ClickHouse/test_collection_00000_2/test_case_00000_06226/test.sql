select tuple(toNullable(number), materialize('a'), materialize(toUInt64OrNull(''))) = tuple(number, materialize('a'), number) from numbers(1);
