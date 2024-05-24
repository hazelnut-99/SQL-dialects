SELECT ifNull(materialize('x'), materialize('y')) AS res, toTypeName(res);
