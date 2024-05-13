SELECT f.* FROM format('CSV', '1,2,"[1,2,3]","[[\'abc\'], [], [\'d\', \'e\']]"') AS f;
