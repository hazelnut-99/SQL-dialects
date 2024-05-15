SELECT JSONExtract(toNullable('{"string_value":null}'), 'string_value', 'String') as x, toTypeName(x);
