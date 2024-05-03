select tuple(materialize(toUInt64OrNull(''))) <= tuple(materialize(toUInt64OrNull(''))) from numbers(1);
