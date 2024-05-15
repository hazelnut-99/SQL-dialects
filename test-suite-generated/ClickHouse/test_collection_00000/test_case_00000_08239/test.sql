SELECT rightPad(leftPad(toString(number), number::Int64, '_'), number::Int64*2, '^') FROM numbers(7);
