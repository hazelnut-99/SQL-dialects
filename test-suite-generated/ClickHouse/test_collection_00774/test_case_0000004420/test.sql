SELECT coalesce(materialize(NULL), materialize(NULL)) as x, toTypeName(x);
