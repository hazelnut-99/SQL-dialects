SELECT JSONExtract('{"string_value":null}', 'string_value', 'LowCardinality(Nullable(String))') as x, toTypeName(x);
