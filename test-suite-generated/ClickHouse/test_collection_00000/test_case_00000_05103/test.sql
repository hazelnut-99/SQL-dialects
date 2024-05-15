SELECT
  toTypeName(d32), toTypeName(d64), toTypeName(d64)
FROM generateRandom('d32 Decimal32(4), d64 Decimal64(8), d128 Decimal128(16)')
LIMIT 1;
