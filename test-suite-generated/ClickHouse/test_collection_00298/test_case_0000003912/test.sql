SELECT ifNull(toNullable('x'), materialize('y')) AS res, toTypeName(res);
