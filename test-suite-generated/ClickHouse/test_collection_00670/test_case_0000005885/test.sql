SELECT toFloat32(99999.99)  as x, toDecimal32(x, 2), toDecimal32(-x, 2), toDecimal64(x, 2), toDecimal64(-x, 2);
