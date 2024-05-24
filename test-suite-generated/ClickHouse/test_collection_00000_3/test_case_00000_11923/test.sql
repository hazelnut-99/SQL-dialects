SELECT transform(number, [2], [toDecimal32(1, 1)], materialize(80000)) as x FROM numbers(2);
