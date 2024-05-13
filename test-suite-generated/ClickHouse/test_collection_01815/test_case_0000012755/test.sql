select tuple(number, materialize(toUInt64OrNull(''))) < tuple(number + 1, number) from numbers(1);
