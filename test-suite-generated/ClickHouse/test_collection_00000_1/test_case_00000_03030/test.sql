SELECT toFloat32(999999.9)  as x, toDecimal32(x, 1), toDecimal32(-x, 1), toDecimal64(x, 1), toDecimal64(-x, 1);
