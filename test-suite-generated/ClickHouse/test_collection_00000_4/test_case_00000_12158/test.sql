select regexpExtract(materialize('100-200'), '(\\d+)-(\\d+)', number) from numbers(3);
