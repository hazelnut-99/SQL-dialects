SELECT toFloat32(9.99999999)  as x, toDecimal32(x, 8), toDecimal32(-x, 8), toDecimal64(x, 8), toDecimal64(-x, 8);
