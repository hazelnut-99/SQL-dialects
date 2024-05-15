SELECT toFloat64(99999.9999)  as x, toDecimal32(x, 4), toDecimal32(-x, 4), toDecimal64(x, 4), toDecimal64(-x, 4);
