SELECT sipHash128((toUInt64(9223372036854775806), 1)) = sipHash128(1) GROUP BY sipHash128(1::UInt8), toUInt64(9223372036854775806);
