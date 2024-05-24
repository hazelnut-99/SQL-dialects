SELECT
  d32, d64, d128
FROM generateRandom('d32 Decimal32(4), d64 Decimal64(8), d128 Decimal128(16)', 1, 10, 10)
LIMIT 10;
