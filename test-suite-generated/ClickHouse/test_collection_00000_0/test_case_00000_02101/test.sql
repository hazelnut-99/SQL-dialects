SELECT ifNull('x', toNullable('y')) AS res, toTypeName(res);
