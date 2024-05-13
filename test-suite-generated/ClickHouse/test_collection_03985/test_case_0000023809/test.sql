SELECT toInt64(operand) AS operand, toInt32(low) AS low, toInt16(high) AS high, count, WIDTH_BUCKET(operand, low, high, count) FROM mytable WHERE count != 0;
