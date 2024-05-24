select toColumnTypeName(tuple(1, assumeNotNull(materialize(NULL))));
