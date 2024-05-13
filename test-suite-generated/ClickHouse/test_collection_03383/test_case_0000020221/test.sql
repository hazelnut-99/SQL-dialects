select toTypeName(tuple(1, assumeNotNull(materialize(NULL))));
