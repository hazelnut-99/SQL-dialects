SELECT operand, low, high, count, WIDTH_BUCKET(operand, low, high, count) FROM mytable WHERE count != 0;
