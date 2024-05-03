SELECT uniqExact(reinterpretAsFloat64(reinterpretAsFixedString(reinterpretAsUInt64(reinterpretAsFixedString(nan)) + number))) FROM numbers(10);
