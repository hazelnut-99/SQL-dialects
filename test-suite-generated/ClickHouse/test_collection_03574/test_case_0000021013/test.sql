SELECT format, format_value, c1, c2, c3, c4 FROM format('CSV' AS format, '1,2,"[1,2,3]","[[\'abc\'], [], [\'d\', \'e\']]"' AS format_value);
