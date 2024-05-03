select tuple(materialize(toUInt64OrNull('')), toUInt64OrNull('')) = tuple(toUInt64OrNull(''), toUInt64OrNull('')) from numbers(1);
