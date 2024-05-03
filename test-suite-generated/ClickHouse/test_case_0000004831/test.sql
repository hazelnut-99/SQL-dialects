select tuple(materialize(toUInt64OrNull('')), number) = tuple(number, number) from numbers(1);
