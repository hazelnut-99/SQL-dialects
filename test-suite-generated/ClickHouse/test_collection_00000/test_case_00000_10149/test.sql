select toColumnTypeName(map(1, assumeNotNull(materialize(NULL))));
