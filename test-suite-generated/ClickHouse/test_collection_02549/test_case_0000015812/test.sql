SELECT * FROM (SELECT col1, col2 FROM (select '1' as col1, '2' as col2) GROUP by col1, col2) AS expr_qry WHERE col2 != '';
