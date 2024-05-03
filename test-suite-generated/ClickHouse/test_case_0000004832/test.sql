select tuple(materialize(toUInt64OrNull('')), number) = tuple(number, toUInt64OrNull('')) from numbers(1);
