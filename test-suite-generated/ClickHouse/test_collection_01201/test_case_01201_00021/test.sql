select mapSubtract(map(toUInt8(1), toInt32(1), 2, 1), map(toUInt8(1), toInt16(2), 2, 2)) as res, toTypeName(res);
