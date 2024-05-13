SELECT 1 AS x, 200000 AS y, least(x, y), greatest(x, y), least(x, materialize(y)), greatest(materialize(x), y), greatest(materialize(x), materialize(y)), toTypeName(least(x, y));
