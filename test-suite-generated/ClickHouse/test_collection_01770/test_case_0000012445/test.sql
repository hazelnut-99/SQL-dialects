select mapSubtract(map(toUInt8(3), toInt32(1)), map(toUInt8(1), toInt32(2), 2, 2)) as res, toTypeName(res);
