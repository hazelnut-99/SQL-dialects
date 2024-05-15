select tuple(number) >= tuple(materialize(toUInt64OrNull(''))) from numbers(1);
