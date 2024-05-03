select tuple(toNullable(number), number, materialize(toUInt64OrNull(''))) = tuple(number, number, number) from numbers(1);
