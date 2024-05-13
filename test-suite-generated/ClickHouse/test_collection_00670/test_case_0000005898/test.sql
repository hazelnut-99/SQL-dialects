SELECT toFloat64(9999.99999)  as x, toDecimal32(x, 5), toDecimal32(-x, 5), toDecimal64(x, 5), toDecimal64(-x, 5);
