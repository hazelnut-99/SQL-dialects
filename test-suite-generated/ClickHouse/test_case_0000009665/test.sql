select toTypeName(map(1, assumeNotNull(materialize(NULL))));
