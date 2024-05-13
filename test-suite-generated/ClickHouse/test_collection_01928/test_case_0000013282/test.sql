SELECT  least(toInt8(127), toInt256(0)) x, least(toInt8(127), toInt256(128)) x2,
        least(toInt8(-128), toInt256(0)) x3, least(toInt8(-128), toInt256(-129)) x4,
        greatest(toInt8(127), toInt256(0)) y, greatest(toInt8(127), toInt256(128)) y2,
        greatest(toInt8(-128), toInt256(0)) y3, greatest(toInt8(-128), toInt256(-129)) y4,
        toTypeName(x), toTypeName(y);
