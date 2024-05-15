SELECT ifNull(materialize('x'), toNullable('y')) AS res, toTypeName(res);
