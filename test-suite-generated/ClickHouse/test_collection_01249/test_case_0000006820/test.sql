with '{"string_value":null}' as json select JSONExtract(json, 'string_value', 'Nullable(String)');
