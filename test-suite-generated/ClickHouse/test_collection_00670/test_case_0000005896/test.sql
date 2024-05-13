SELECT toFloat64(999999.999)  as x, toDecimal32(x, 3), toDecimal32(-x, 3), toDecimal64(x, 3), toDecimal64(-x, 3);
