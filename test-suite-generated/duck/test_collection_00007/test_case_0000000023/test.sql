SELECT bool_and(i), bool_and(j) FROM (SELECT NULL) tbl(i), (SELECT NULL) tbl2(j);
