SELECT JSONExtract('{"string_value":null}', 'string_value', 'Nullable(String)') as x, toTypeName(x);
