SELECT toFloat32(9999.999)  as x, toDecimal32(x, 3), toDecimal32(-x, 3), toDecimal64(x, 3), toDecimal64(-x, 3);
