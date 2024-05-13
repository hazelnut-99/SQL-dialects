SELECT  least(toUInt8(255), toUInt256(0)) x, least(toUInt8(255), toUInt256(256)) x2,
        greatest(toUInt8(255), toUInt256(0)) y, greatest(toUInt8(255), toUInt256(256)) y2,
        toTypeName(x), toTypeName(y);
