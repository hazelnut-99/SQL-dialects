WITH 'CSV', '1,2,"[1,2,3]","[[\'abc\'], [], [\'d\', \'e\']]"' AS format_value SELECT c1, c2, c3, c4 FROM format('CSV', format_value);
WITH concat('1,2,"[1,2,3]",','"[[\'abc\'], [], [\'d\', \'e\']]"') AS format_value SELECT c1, c2, c3, c4 FROM format('CSV', format_value);
