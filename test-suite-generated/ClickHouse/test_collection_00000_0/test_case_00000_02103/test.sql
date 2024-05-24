SELECT ifNull(toNullable('x'), toNullable('y')) AS res, toTypeName(res);
