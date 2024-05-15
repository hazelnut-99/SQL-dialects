select regexpExtract(materialize('100-200'), '(\\d+)-(\\d+)', materialize(2));
