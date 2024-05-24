SELECT countDigits(toInt8(127)), countDigits(toInt8(-128)),  countDigits(toUInt8(255)),
       countDigits(toInt16(32767)), countDigits(toInt16(-32768)), countDigits(toUInt16(65535)),
       countDigits(toInt32(2147483647)), countDigits(toInt32(-2147483648)), countDigits(toUInt32(4294967295)),
       countDigits(toInt64(9223372036854775807)), countDigits(toInt64(-9223372036854775808)), countDigits(toUInt64(18446744073709551615));
