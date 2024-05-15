select arrayMap(x -> NULL::Nullable(UInt8), range(number)) from numbers(3);
