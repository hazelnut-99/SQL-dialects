SELECT toUInt8(toInt8(operand)) AS operand, toUInt16(toInt16(low)) AS low, toUInt32(toInt32(high)) AS high, count, WIDTH_BUCKET(operand, low, high, count) FROM mytable WHERE count != 0;
