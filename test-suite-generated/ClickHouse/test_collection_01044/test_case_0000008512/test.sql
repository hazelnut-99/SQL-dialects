SELECT IPv6CIDRToRange(IPv6StringToNum('2001:0db8:0000:85a3:0000:0000:ac1f:8001'), toUInt8(128 - number)) FROM numbers(2);
