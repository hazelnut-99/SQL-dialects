select arrayMap(x -> toNullable(1), range(number)) from numbers(3);
