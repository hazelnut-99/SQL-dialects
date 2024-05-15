WITH tuple(INTERVAL 1 SECOND) + INTERVAL 1 SECOND as expr SELECT expr, toTypeName(expr);
WITH tuple(INTERVAL 1 SECOND) - INTERVAL 1 SECOND as expr SELECT expr, toTypeName(expr);
