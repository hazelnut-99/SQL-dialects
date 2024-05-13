SELECT JSONExtract('{"string_value":null}', 'string_value', 'String') as x, toTypeName(x);
