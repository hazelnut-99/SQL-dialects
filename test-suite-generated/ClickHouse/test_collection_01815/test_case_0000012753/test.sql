select tuple(number, materialize(toUInt64OrNull(''))) < tuple(number, number) from numbers(1);
