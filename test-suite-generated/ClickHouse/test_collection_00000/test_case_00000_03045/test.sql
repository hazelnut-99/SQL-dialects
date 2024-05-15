SELECT toFloat64(999.999999)  as x, toDecimal32(x, 6), toDecimal32(-x, 6), toDecimal64(x, 6), toDecimal64(-x, 6);
