SELECT toTypeName(groupArrayMovingAvg(256)(toDecimal32(1, 9))) FROM numbers(300);
